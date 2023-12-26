import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_language_tmdb_use_case.freezed.dart';

@Injectable()
class GetLanguageTMDBUseCase
    extends BaseUseCase<bool, GetLanguageTMDBUseCaseParams> {
  final Repository _repository;

  GetLanguageTMDBUseCase({required Repository repository})
      : _repository = repository;

  @override
  Future<Either<AppException, bool>> call(GetLanguageTMDBUseCaseParams params) {
    return _repository.getSaveLanguageTMDB();
  }
}

@freezed
class GetLanguageTMDBUseCaseParams with _$GetLanguageTMDBUseCaseParams {
  const factory GetLanguageTMDBUseCaseParams() = _GetLanguageTMDBUseCaseParams;
}
