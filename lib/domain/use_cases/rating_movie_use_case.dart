import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'rating_movie_use_case.freezed.dart';

@Injectable()
class RatingMovieUseCase
    extends BaseUseCase<CommonResponse, RatingMovieUseCaseParams> {
  final Repository _repository;

  RatingMovieUseCase({
    required Repository repository,
  }) : _repository = repository;
  @override
  Future<Either<AppException, CommonResponse>> call(params) async {
    return await _repository.ratingMovie(params.movieId, params.value);
  }
}

@freezed
class RatingMovieUseCaseParams with _$RatingMovieUseCaseParams {
  const factory RatingMovieUseCaseParams({
    required String movieId,
    required double value,
  }) = _RatingMovieUseCaseParams;
}
