import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_movie_genres_use_case.freezed.dart';

@Injectable()
class GetMovieGenresUseCase
    extends BaseUseCase<List<Genre>, GetMovieGenresUseCaseParams> {
  const GetMovieGenresUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, List<Genre>>> call(
      GetMovieGenresUseCaseParams params) {
    return repository.getSaveMovieGenresTMDB(params.language);
  }
}

@freezed
class GetMovieGenresUseCaseParams with _$GetMovieGenresUseCaseParams {
  const factory GetMovieGenresUseCaseParams({
    @Default('') String language,
  }) = _GetMovieGenresUseCaseParams;
}
