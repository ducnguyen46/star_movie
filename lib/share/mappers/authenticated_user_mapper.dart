import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/base_data_mapper.dart';

@Injectable()
class AuthenticatedUserMapper extends BaseDataMapper<AuthenticatedUserModel, AuthenticatedUserData> {
  @override
  AuthenticatedUserData toEntity(AuthenticatedUserModel model) {
    return AuthenticatedUserData(
      isAuthenticatedUser: model.isAuthenticatedUser,
      sessionId: model.sessionId,
      guestSessionId: model.guestSessionId,
      expiresAt: model.expiresAt,
    );
  }
}