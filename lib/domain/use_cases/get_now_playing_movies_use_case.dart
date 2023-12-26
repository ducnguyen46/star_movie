import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

import 'base_use_case.dart';

part 'get_now_playing_movies_use_case.freezed.dart';

@Injectable()
class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>, GetNowPlayingMoviesUseCaseParams> {
  const GetNowPlayingMoviesUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, List<Movie>>> call(GetNowPlayingMoviesUseCaseParams params) {
    return repository.getNowPlayingMovies(params.page, params.language, params.region);
  }
}

@freezed
class GetNowPlayingMoviesUseCaseParams with _$GetNowPlayingMoviesUseCaseParams {
  const factory GetNowPlayingMoviesUseCaseParams({
    @Default(1) int page,
    @Default('') String language,
    @Default('') String region,
  }) = _GetNowPlayingMoviesUseCaseParams;
}
