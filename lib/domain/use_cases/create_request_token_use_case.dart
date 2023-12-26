
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

import 'base_use_case.dart';

part 'create_request_token_use_case.freezed.dart';

@Injectable()
class CreateRequestTokenUseCase extends BaseUseCase<String, CreateRequestTokenUseCaseParams> {
  const CreateRequestTokenUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, String>> call(CreateRequestTokenUseCaseParams params) {
    return repository.createRequestToken();
  }
}

@freezed
class CreateRequestTokenUseCaseParams with _$CreateRequestTokenUseCaseParams {
  const factory CreateRequestTokenUseCaseParams() = _CreateRequestTokenUseCaseParams;
}