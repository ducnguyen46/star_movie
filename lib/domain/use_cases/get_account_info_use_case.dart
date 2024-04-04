import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_account_info_use_case.freezed.dart';

@Injectable()
class GetAccountInfoUseCase
    extends BaseUseCase<AccountInfo, GetAccountInfoUseCaseParams> {
  final Repository _repository;

  GetAccountInfoUseCase({
    required Repository repository,
  }) : _repository = repository;

  @override
  Future<Either<AppException, AccountInfo>> call(
    GetAccountInfoUseCaseParams params,
  ) {
    return _repository.getAccountInfo(params.sessionId);
  }
}

@freezed
class GetAccountInfoUseCaseParams with _$GetAccountInfoUseCaseParams {
  const factory GetAccountInfoUseCaseParams({
    required String sessionId,
  }) = _GetAccountInfoUseCaseParams;
}
