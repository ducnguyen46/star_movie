import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_upcoming_movies_use_case.freezed.dart';

@Injectable()
class GetUpcomingMoviesUseCase extends BaseUseCase<List<Movie>, GetUpcomingMoviesUseCaseParams> {
  const GetUpcomingMoviesUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, List<Movie>>> call(GetUpcomingMoviesUseCaseParams params) {
    return repository.getUpcomingMovies(params.page, params.language, params.region);
  }

}

@freezed
class GetUpcomingMoviesUseCaseParams with _$GetUpcomingMoviesUseCaseParams {
  const factory GetUpcomingMoviesUseCaseParams({
    @Default(1) int page,
    @Default('') String language,
    @Default('') String region,
  }) = _GetUpcomingMoviesUseCaseParams;
}
