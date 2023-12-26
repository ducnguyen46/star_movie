import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_trending_movies_use_case.freezed.dart';

@Injectable()
class GetTrendingMoviesUseCase extends BaseUseCase<List<Movie>, GetTrendingMoviesUseCaseParams> {
  const GetTrendingMoviesUseCase({required this.repository});
  final Repository repository;

  @override
  Future<Either<AppException, List<Movie>>> call(GetTrendingMoviesUseCaseParams params) {
    return repository.getTrendingMovies(params.timeWindow, params.page, params.language);
  }
}

@freezed
class GetTrendingMoviesUseCaseParams with _$GetTrendingMoviesUseCaseParams {
  const factory GetTrendingMoviesUseCaseParams({
    // path
    // week/day
    @Default('week') String timeWindow,
    // query
    @Default(1) int page,
    @Default('') String language,
  }) = _GetTrendingMoviesUseCaseParams;
}
