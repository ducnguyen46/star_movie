import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'log_out_use_case.freezed.dart';

@Injectable()
class LogOutUseCase extends BaseUseCase<bool, LogOutUseCaseParams> {
  final Repository _repository;

  LogOutUseCase({required Repository repository}) : _repository = repository;
  @override
  Future<Either<AppException, bool>> call(LogOutUseCaseParams params) {
    return _repository.logOut(params.sessionId);
  }
}

@freezed
class LogOutUseCaseParams with _$LogOutUseCaseParams {
  const factory LogOutUseCaseParams({
    required String sessionId,
  }) = _LogOutUseCaseParams;
}
