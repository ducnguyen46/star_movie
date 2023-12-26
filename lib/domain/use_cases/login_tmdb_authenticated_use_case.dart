import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/authenticated_user_data.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'login_tmdb_authenticated_use_case.freezed.dart';

@Injectable()
class LoginTMDBAuthenticatedUseCase extends BaseUseCase<AuthenticatedUserData, LoginTMDBAuthenticatedUseCaseParams> {
  const LoginTMDBAuthenticatedUseCase({required this.repository});
  final Repository repository;

  @override
  Future<Either<AppException, AuthenticatedUserData>> call(LoginTMDBAuthenticatedUseCaseParams params) {
    return repository.getAuthenticatedSessionTMDB(params.requestToken);
  }
}

@freezed
class LoginTMDBAuthenticatedUseCaseParams with _$LoginTMDBAuthenticatedUseCaseParams {
  const factory LoginTMDBAuthenticatedUseCaseParams({
    required String requestToken,
  }) = _LoginTMDBAuthenticatedUseCaseParams;
}
