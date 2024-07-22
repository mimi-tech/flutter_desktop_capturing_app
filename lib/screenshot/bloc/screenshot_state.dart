part of 'screenshot_bloc.dart';

@freezed
class ScreenshotState with _$ScreenshotState {
  const factory ScreenshotState({
    Uint8List? screenshot,
    String? errorMessage,
  }) = _ScreenshotState;
}
