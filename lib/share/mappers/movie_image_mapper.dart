import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class MovieImageMapper extends BaseDataMapper<MovieImageModel, MovieImage> {
  @override
  MovieImage toEntity(MovieImageModel model) {
    return MovieImage(
      height: model.height,
      width: model.width,
      filePath: model.filePath,
    );
  }
}
