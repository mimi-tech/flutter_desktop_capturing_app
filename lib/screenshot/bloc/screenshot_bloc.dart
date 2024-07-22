import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screenshot_event.dart';
part 'screenshot_state.dart';
part 'screenshot_bloc.freezed.dart';

class ScreenshotBloc extends Bloc<ScreenshotEvent, ScreenshotState> {
  static const platform = MethodChannel('com.example.flutter_desktop_app');

  ScreenshotBloc() : super( const ScreenshotState()) {
    on<ScreenshotCapture>(_onCapture);
  }

  Future<void> _onCapture(ScreenshotCapture event, Emitter<ScreenshotState> emit) async {
    try {
      //final result = await platform.invokeMethod<Uint8List>('captureScreenshot');
      final result = await platform.invokeMethod<Uint8List>('captureScreenshot');
      emit(state.copyWith(screenshot: result));
    } on PlatformException catch (e) {
      emit(state.copyWith(errorMessage:"Failed to capture screenshot: ${e.message}" ));
    }
  }
}