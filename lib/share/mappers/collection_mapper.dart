import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class CollectionMapper extends BaseDataMapper<CollectionModel, Collection> {
  @override
  Collection toEntity(CollectionModel model) {
    return Collection(
      adult: model.adult,
      id: model.id,
      name: model.name,
      originalName: model.originalName,
      overview: model.overview,
      backdropPath: model.backdropPath,
      posterPath: model.posterPath,
    );
  }
}
