import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class ExternalIdMapper extends BaseDataMapper<ExternalIdModel, ExternalId> {
  @override
  ExternalId toEntity(ExternalIdModel model) {
    return ExternalId(
      imdbId: model.imdbId,
      wikiId: model.wikiId,
      facebookId: model.facebookId,
      instagramId: model.instagramId,
      twitterId: model.twitterId,
    );
  }
}
