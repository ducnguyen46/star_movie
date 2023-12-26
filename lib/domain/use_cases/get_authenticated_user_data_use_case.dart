import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

import '../entities/entities.dart';
import '../repositories/repository.dart';

part 'get_authenticated_user_data_use_case.freezed.dart';

@Injectable()
class GetAuthenticatedUserDataUseCase
    extends BaseUseCase<AuthenticatedUserData, GetAuthenticatedUserDataUseCaseParams> {
  const GetAuthenticatedUserDataUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, AuthenticatedUserData>> call(GetAuthenticatedUserDataUseCaseParams params) {
    return repository.getAuthenticatedUserDataLocal();
  }
}

@freezed
class GetAuthenticatedUserDataUseCaseParams with _$GetAuthenticatedUserDataUseCaseParams {
  const factory GetAuthenticatedUserDataUseCaseParams() = _GetAuthenticatedUserDataUseCaseParams;
}
