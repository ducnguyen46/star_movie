import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'check_is_logged_in_use_case.freezed.dart';

@Injectable()
class CheckIsLoggedInUseCase extends BaseUseCase<bool, CheckIsLoggedInParams> {
  const CheckIsLoggedInUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, bool>> call(CheckIsLoggedInParams params) {
    return repository.isUserLoggedIn();
  }
}

@freezed
class CheckIsLoggedInParams with _$CheckIsLoggedInParams {
  const factory CheckIsLoggedInParams() = _CheckIsLoggedInParams;
}
