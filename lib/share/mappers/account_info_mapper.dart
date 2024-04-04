import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class AccountInfoMapper extends BaseDataMapper<AccountInfoModel, AccountInfo> {
  final AccountAvatarMapper accountAvatarMapper;

  AccountInfoMapper({required this.accountAvatarMapper});

  @override
  AccountInfo toEntity(AccountInfoModel model) {
    return AccountInfo(
      avatar: accountAvatarMapper.toEntity(model.avatar),
      id: model.id,
      name: model.name,
      username: model.username,
    );
  }
}

@Injectable()
class AccountAvatarMapper
    extends BaseDataMapper<AccountAvatarModel, AccountAvatar> {
  final GravatarMapper gravatarMapper;
  final TMDBAvatarMapper tmdbAvatarMapper;

  AccountAvatarMapper({
    required this.gravatarMapper,
    required this.tmdbAvatarMapper,
  });

  @override
  AccountAvatar toEntity(AccountAvatarModel model) {
    return AccountAvatar(
      gravatar: gravatarMapper.toEntity(model.gravatar),
      tmdbAvatar: tmdbAvatarMapper.toEntity(model.tmdbAvatar),
    );
  }
}

@Injectable()
class GravatarMapper extends BaseDataMapper<GravatarModel, Gravatar> {
  @override
  Gravatar toEntity(GravatarModel model) {
    return Gravatar(hash: model.hash);
  }
}

@Injectable()
class TMDBAvatarMapper extends BaseDataMapper<TMDBAvatarModel, TMDBAvatar> {
  @override
  TMDBAvatar toEntity(TMDBAvatarModel model) {
    return TMDBAvatar(avatarPath: model.avatarPath);
  }
}
