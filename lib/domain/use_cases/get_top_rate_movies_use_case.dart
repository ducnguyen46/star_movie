import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_top_rate_movies_use_case.freezed.dart';

@Injectable()
class GetTopRateMoviesUseCase extends BaseUseCase<List<Movie>, GetTopRateMoviesUseCaseParams> {
  const GetTopRateMoviesUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, List<Movie>>> call(GetTopRateMoviesUseCaseParams params) {
    return repository.getTopRateMovies(params.page, params.language, params.region);
  }
}

@freezed
class GetTopRateMoviesUseCaseParams with _$GetTopRateMoviesUseCaseParams {
  const factory GetTopRateMoviesUseCaseParams({
    @Default(1) int page,
    @Default('') String language,
    @Default('') String region,
  }) = _GetTopRateMoviesUseCaseParams;
}
