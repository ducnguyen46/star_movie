import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'search_movie_use_case.freezed.dart';

@Injectable()
class SearchMovieUseCase
    extends BaseUseCase<List<Movie>, SearchMovieUseCaseParams> {
  final Repository _repository;

  SearchMovieUseCase({required Repository repository})
      : _repository = repository;

  @override
  Future<Either<AppException, List<Movie>>> call(
      SearchMovieUseCaseParams params) {
    return _repository.searchMovie(
      params.query,
      params.page,
      params.includeAdult,
      params.year,
      params.primaryReleaseYear,
    );
  }
}

@freezed
class SearchMovieUseCaseParams with _$SearchMovieUseCaseParams {
  const factory SearchMovieUseCaseParams({
    required String query,
    required int page,
    required bool includeAdult,
    required String year,
    required String primaryReleaseYear,
  }) = _SearchMovieUseCaseParams;
}
