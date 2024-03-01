import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'remove_rating_movie_use_case.freezed.dart';

@Injectable()
class RemoveRatingMovieUseCase
    extends BaseUseCase<CommonResponse, RemoveRatingMovieUseCaseParams> {
  final Repository _repository;

  RemoveRatingMovieUseCase({
    required Repository repository,
  }) : _repository = repository;
  @override
  Future<Either<AppException, CommonResponse>> call(params) async {
    return await _repository.removeRatingMovie(params.movieId);
  }
}

@freezed
class RemoveRatingMovieUseCaseParams with _$RemoveRatingMovieUseCaseParams {
  const factory RemoveRatingMovieUseCaseParams({
    required String movieId,
  }) = _RemoveRatingMovieUseCaseParams;
}
