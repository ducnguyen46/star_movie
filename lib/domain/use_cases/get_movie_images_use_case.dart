import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_movie_images_use_case.freezed.dart';

@Injectable()
class GetMovieImagesUseCase
    extends BaseUseCase<List<MovieImage>, GetMovieImagesUseCaseParams> {
  GetMovieImagesUseCase(this.repository);

  final Repository repository;

  @override
  Future<Either<AppException, List<MovieImage>>> call(
      GetMovieImagesUseCaseParams params) {
    return repository.getMovieImage(params.movieId, params.type);
  }
}

@freezed
class GetMovieImagesUseCaseParams with _$GetMovieImagesUseCaseParams {
  const factory GetMovieImagesUseCaseParams({
    @Default('') String movieId,
    @Default('') String type,
  }) = _GetMovieImagesUseCaseParams;
}
