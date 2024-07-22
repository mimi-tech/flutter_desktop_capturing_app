part of 'screenshot_bloc.dart';

@freezed
class ScreenshotEvent with _$ScreenshotEvent {
  const factory ScreenshotEvent.capture() = ScreenshotCapture;
}
