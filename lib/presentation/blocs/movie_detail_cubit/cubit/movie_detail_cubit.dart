import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';

part 'movie_detail_state.dart';
part 'movie_detail_cubit.freezed.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit({
    required GetMovieDetailUseCase movieDetailUseCase,
  })  : _movieDetailUseCase = movieDetailUseCase,
        super(const MovieDetailState.initial());

  final GetMovieDetailUseCase _movieDetailUseCase;

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
}
