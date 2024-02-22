import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';

part 'photo_viewer_state.dart';

part 'photo_viewer_cubit.freezed.dart';

class PhotoViewerCubit extends Cubit<PhotoViewerState> {
  PhotoViewerCubit({
    required GetMovieImagesUseCase getMovieImagesUseCase,
  })  : _getMovieImagesUseCase = getMovieImagesUseCase,
        super(const PhotoViewerState.loading());

  final GetMovieImagesUseCase _getMovieImagesUseCase;

  void loadingMovieImages({required String movieId, String type = ''}) async {
    emit(const PhotoViewerState.loading());

    final imagesEi = await _getMovieImagesUseCase
        .call(GetMovieImagesUseCaseParams(movieId: movieId, type: type));

    return imagesEi.fold((exception) {
      emit(
        PhotoViewerState.error(
          error: ErrorStateCommon(
            errorMessages: ExceptionMessagesMapper.map(exception),
            exception: exception,
            onRetry: () => loadingMovieImages(movieId: movieId, type: type),
          ),
        ),
      );
    }, (movieImages) {
      emit(PhotoViewerState.loaded(images: movieImages));
    });
  }
}
