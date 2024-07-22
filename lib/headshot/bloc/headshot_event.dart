part of 'headshot_bloc.dart';

@freezed
class HeadshotEvent with _$HeadshotEvent {
  const factory HeadshotEvent.startHeadshotCapture() = StartHeadshotCapture;
  const factory HeadshotEvent.stopHeadshotCapture() = StopHeadshotCapture;
  const factory HeadshotEvent.captureHeadshot() = CaptureHeadshot;
}
