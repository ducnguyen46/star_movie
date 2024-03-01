import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';

part 'movie_detail_state.dart';
part 'movie_detail_cubit.freezed.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit({
    required GetMovieDetailUseCase movieDetailUseCase,
    required RatingMovieUseCase ratingMovieUseCase,
    required RemoveRatingMovieUseCase removeRatingMovieUseCase,
  })  : _movieDetailUseCase = movieDetailUseCase,
        _ratingMovieUseCase = ratingMovieUseCase,
        _removeRatingMovieUseCase = removeRatingMovieUseCase,
        super(const MovieDetailState.initial());

  final GetMovieDetailUseCase _movieDetailUseCase;
  final RatingMovieUseCase _ratingMovieUseCase;
  final RemoveRatingMovieUseCase _removeRatingMovieUseCase;

  void getDetailMovie(int movieId) async {
    emit(state.copyWith(
      status: MovieDetailStatus.loading,
      movieDetail: null,
      errorState: null,
    ));

    // get movie detail
    final movieDetailEi = await _movieDetailUseCase.call(
      GetMovieDetailUseCaseParams(movieId: '$movieId'),
    );

    return movieDetailEi.fold((ex) {
      return emit(state.copyWith(
        status: MovieDetailStatus.error,
        errorState: ErrorStateCommon(
          errorMessages: ExceptionMessagesMapper.map(ex),
          exception: ex,
          onRetry: () => getDetailMovie(movieId),
        ),
      ));
    }, (movieDetail) {
      return emit(state.copyWith(
        status: MovieDetailStatus.loaded,
        movieDetail: movieDetail,
      ));
    });
  }

  void setShowTitle({required bool showTitle}) {
    emit(state.copyWith(showTitle: showTitle));
  }

  void ratingMovie({
    required String movieId,
    required double value,
  }) async {
    emit(state.copyWith(status: MovieDetailStatus.rating));
    final responseEi = await _ratingMovieUseCase.call(RatingMovieUseCaseParams(
      movieId: movieId,
      value: value,
    ));

    return responseEi.fold((e) {
      emit(
        state.copyWith(
          status: MovieDetailStatus.error,
          errorState: ErrorStateCommon(
            errorMessages: ExceptionMessagesMapper.map(e),
            exception: e,
            onRetry: () => ratingMovie(movieId: movieId, value: value),
          ),
        ),
      );
    }, (response) {
      emit(state.copyWith(
        status: MovieDetailStatus.rated,
        movieDetail: state.movieDetail!.copyWith(rate: value),
      ));
    });
  }

  void removeRatingMovie({required String movieId}) async {
    emit(state.copyWith(status: MovieDetailStatus.rating));
    final responseEi =
        await _removeRatingMovieUseCase.call(RemoveRatingMovieUseCaseParams(
      movieId: movieId,
    ));

    return responseEi.fold((e) {
      emit(
        state.copyWith(
          status: MovieDetailStatus.error,
          errorState: ErrorStateCommon(
            errorMessages: ExceptionMessagesMapper.map(e),
            exception: e,
            onRetry: () => removeRatingMovie(movieId: movieId),
          ),
        ),
      );
    }, (response) {
      emit(state.copyWith(
        status: MovieDetailStatus.rated,
        movieDetail: state.movieDetail!.copyWith(rate: -1),
      ));
    });
  }
}
