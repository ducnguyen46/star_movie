import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class GenreMapper extends BaseDataMapper<GenreModel, Genre> {
  @override
  Genre toEntity(GenreModel model) {
    return Genre(id: model.id, name: model.name);
  }
}
