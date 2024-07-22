part of 'headshot_bloc.dart';

@freezed
class HeadshotState with _$HeadshotState {
  const factory HeadshotState({
    Uint8List? headshot,
    String? errorMessage,
    bool? loading,
  }) = _HeadshotState;
}
