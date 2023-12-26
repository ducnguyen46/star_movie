import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'login_tmdb_guest_use_case.freezed.dart';

@Injectable()
class LoginTMDBGuestUseCase
    extends BaseUseCase<AuthenticatedUserData, LoginTMDBGuestParams> {
  const LoginTMDBGuestUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, AuthenticatedUserData>> call(
      LoginTMDBGuestParams params) {
    return repository.loginTMDBGuest();
  }
}

@freezed
class LoginTMDBGuestParams with _$LoginTMDBGuestParams {
  const factory LoginTMDBGuestParams() = _LoginTMDBGuestParams;
}
