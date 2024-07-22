import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'headshot_event.dart';
part 'headshot_state.dart';
part 'headshot_bloc.freezed.dart';

class HeadshotBloc extends Bloc<HeadshotEvent, HeadshotState> {
  static const platform = MethodChannel('com.example.flutter_desktop_app');

  HeadshotBloc() : super(const HeadshotState()) {

    on<StopHeadshotCapture>(_onStopHeadshotCapture);
    on<CaptureHeadshot>(_onCaptureHeadshot);

  }

  Future<void> _onStopHeadshotCapture(StopHeadshotCapture event, Emitter<HeadshotState> emit) async {

    try {
      await platform.invokeMethod('stopCamera');
    }  on PlatformException catch (e) {
      emit(state.copyWith(errorMessage:"Failed to stop camera: ${e.message}" ));
    }
}

  Future<void> _onCaptureHeadshot(CaptureHeadshot event, Emitter<HeadshotState> emit) async {
    try{
      emit(state.copyWith(loading:true ));
      await Future.delayed(const Duration(seconds: 3));

      final result = await platform.invokeMethod<Uint8List>('captureHeadshot');
      emit(state.copyWith(headshot: result));
      emit(state.copyWith(loading:false ));

    } on PlatformException catch (e) {

      emit(state.copyWith(loading:false ));
      emit(state.copyWith(errorMessage:"Failed to capture screenshot: ${e.message}" ));
    }
  }

}