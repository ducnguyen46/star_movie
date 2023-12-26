import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

part 'get_movie_detail_use_case.freezed.dart';

@Injectable()
class GetMovieDetailUseCase
    implements BaseUseCase<MovieDetail, GetMovieDetailUseCaseParams> {
  GetMovieDetailUseCase({
    required Repository repository,
  }) : _repository = repository;

  final Repository _repository;

  @override
  Future<Either<AppException, MovieDetail>> call(
      GetMovieDetailUseCaseParams params) {
    return _repository.getMovieDetail(params.movieId);
  }
}

@freezed
class GetMovieDetailUseCaseParams with _$GetMovieDetailUseCaseParams {
  const factory GetMovieDetailUseCaseParams({
    required String movieId,
  }) = _GetMovieDetailUseCaseParams;
}
