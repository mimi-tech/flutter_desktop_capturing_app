import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

part "timer_bloc.freezed.dart";
part 'timer_event.dart';
part 'timer_state.dart';





class TimerBloc extends Bloc<TimerEvent, TimerState> {
  Timer? _timer;

  TimerBloc() : super(const TimerState(duration: 0, isRunning: false)) {
    on<TimerStarted>(_onStarted);
    on<TimerTicked>(_onTicked);
    on<TimerStopped>(_onStopped);
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    _timer?.cancel();
    emit(state.copyWith(duration: 0, isRunning: true));
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(TimerTicked(state.duration + 1));
    });
  }

  void _onTicked(TimerTicked event, Emitter<TimerState> emit) {
    emit(state.copyWith(duration: event.duration, isRunning: true));
  }

  void _onStopped(TimerStopped event, Emitter<TimerState> emit) {
    _timer?.cancel();
    emit(state.copyWith(isRunning: false));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
