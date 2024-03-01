import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class AccountStateMapper
    extends BaseDataMapper<AccountStateModel, AccountState> {
  @override
  AccountState toEntity(AccountStateModel model) {
    return AccountState(
      movieId: model.movieId,
      isFavorite: model.isFavorite,
      rated: model.rated,
      isWatchlist: model.isWatchlist,
    );
  }
}
