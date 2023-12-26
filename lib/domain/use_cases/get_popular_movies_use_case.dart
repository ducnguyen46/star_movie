import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

import 'base_use_case.dart';

part 'get_popular_movies_use_case.freezed.dart';

@Injectable()
class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>, GetPopularMoviesUseCaseParams> {
  const GetPopularMoviesUseCase({required this.repository});
  final Repository repository;

  @override
  Future<Either<AppException, List<Movie>>> call(GetPopularMoviesUseCaseParams params) {
    return repository.getPopularMovies(params.page, params.language, params.region);
  }

}

@freezed
class GetPopularMoviesUseCaseParams with _$GetPopularMoviesUseCaseParams {
  const factory GetPopularMoviesUseCaseParams({
    @Default(1) int page,
    @Default('') String language,
    @Default('') String region,
  }) = _GetPopularMoviesUseCaseParams;
}
