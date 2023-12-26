import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class CrewMapper extends BaseDataMapper<CrewModel, Crew> {
  @override
  Crew toEntity(CrewModel model) {
    return Crew(
      id: model.id,
      castId: model.castId,
      creditId: model.creditId,
      name: model.name,
      job: model.job,
      department: model.department,
      profilePath: model.profilePath,
      popularity: model.popularity,
      gender: model.gender.toGender(),
    );
  }
}
