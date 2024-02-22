part of 'photo_viewer_cubit.dart';

@freezed
class PhotoViewerState with _$PhotoViewerState {
  const factory PhotoViewerState.loading() = _Loading;

  const factory PhotoViewerState.loaded({
    required List<MovieImage> images,
  }) = _Loaded;

  const factory PhotoViewerState.error({
    ErrorStateCommon? error,
  }) = _Error;
}
