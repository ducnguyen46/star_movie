import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class CastMapper extends BaseDataMapper<CastModel, Cast> {
  @override
  Cast toEntity(CastModel model) {
    return Cast(
      id: model.id,
      castId: model.castId,
      creditId: model.creditId,
      name: model.name,
      profilePath: model.profilePath,
      popularity: model.popularity,
      gender: model.gender.toGender(),
      character: model.character,
      knowForDepartment: model.knowForDepartment,
      order: model.order,
    );
  }
}
