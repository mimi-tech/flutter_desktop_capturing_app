part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.started() = TimerStarted;
  const factory TimerEvent.ticked(int duration) = TimerTicked;
  const factory TimerEvent.stopped() = TimerStopped;
}