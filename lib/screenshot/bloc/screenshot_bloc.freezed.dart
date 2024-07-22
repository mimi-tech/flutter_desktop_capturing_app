// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screenshot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScreenshotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() capture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? capture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? capture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenshotCapture value) capture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenshotCapture value)? capture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenshotCapture value)? capture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenshotEventCopyWith<$Res> {
  factory $ScreenshotEventCopyWith(
          ScreenshotEvent value, $Res Function(ScreenshotEvent) then) =
      _$ScreenshotEventCopyWithImpl<$Res, ScreenshotEvent>;
}

/// @nodoc
class _$ScreenshotEventCopyWithImpl<$Res, $Val extends ScreenshotEvent>
    implements $ScreenshotEventCopyWith<$Res> {
  _$ScreenshotEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScreenshotCaptureImplCopyWith<$Res> {
  factory _$$ScreenshotCaptureImplCopyWith(_$ScreenshotCaptureImpl value,
          $Res Function(_$ScreenshotCaptureImpl) then) =
      __$$ScreenshotCaptureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScreenshotCaptureImplCopyWithImpl<$Res>
    extends _$ScreenshotEventCopyWithImpl<$Res, _$ScreenshotCaptureImpl>
    implements _$$ScreenshotCaptureImplCopyWith<$Res> {
  __$$ScreenshotCaptureImplCopyWithImpl(_$ScreenshotCaptureImpl _value,
      $Res Function(_$ScreenshotCaptureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScreenshotCaptureImpl implements ScreenshotCapture {
  const _$ScreenshotCaptureImpl();

  @override
  String toString() {
    return 'ScreenshotEvent.capture()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScreenshotCaptureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() capture,
  }) {
    return capture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? capture,
  }) {
    return capture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? capture,
    required TResult orElse(),
  }) {
    if (capture != null) {
      return capture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenshotCapture value) capture,
  }) {
    return capture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenshotCapture value)? capture,
  }) {
    return capture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenshotCapture value)? capture,
    required TResult orElse(),
  }) {
    if (capture != null) {
      return capture(this);
    }
    return orElse();
  }
}

abstract class ScreenshotCapture implements ScreenshotEvent {
  const factory ScreenshotCapture() = _$ScreenshotCaptureImpl;
}

/// @nodoc
mixin _$ScreenshotState {
  Uint8List? get screenshot => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenshotStateCopyWith<ScreenshotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenshotStateCopyWith<$Res> {
  factory $ScreenshotStateCopyWith(
          ScreenshotState value, $Res Function(ScreenshotState) then) =
      _$ScreenshotStateCopyWithImpl<$Res, ScreenshotState>;
  @useResult
  $Res call({Uint8List? screenshot, String? errorMessage});
}

/// @nodoc
class _$ScreenshotStateCopyWithImpl<$Res, $Val extends ScreenshotState>
    implements $ScreenshotStateCopyWith<$Res> {
  _$ScreenshotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenshotStateImplCopyWith<$Res>
    implements $ScreenshotStateCopyWith<$Res> {
  factory _$$ScreenshotStateImplCopyWith(_$ScreenshotStateImpl value,
          $Res Function(_$ScreenshotStateImpl) then) =
      __$$ScreenshotStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List? screenshot, String? errorMessage});
}

/// @nodoc
class __$$ScreenshotStateImplCopyWithImpl<$Res>
    extends _$ScreenshotStateCopyWithImpl<$Res, _$ScreenshotStateImpl>
    implements _$$ScreenshotStateImplCopyWith<$Res> {
  __$$ScreenshotStateImplCopyWithImpl(
      _$ScreenshotStateImpl _value, $Res Function(_$ScreenshotStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ScreenshotStateImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScreenshotStateImpl implements _ScreenshotState {
  const _$ScreenshotStateImpl({this.screenshot, this.errorMessage});

  @override
  final Uint8List? screenshot;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ScreenshotState(screenshot: $screenshot, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenshotStateImpl &&
            const DeepCollectionEquality()
                .equals(other.screenshot, screenshot) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(screenshot), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenshotStateImplCopyWith<_$ScreenshotStateImpl> get copyWith =>
      __$$ScreenshotStateImplCopyWithImpl<_$ScreenshotStateImpl>(
          this, _$identity);
}

abstract class _ScreenshotState implements ScreenshotState {
  const factory _ScreenshotState(
      {final Uint8List? screenshot,
      final String? errorMessage}) = _$ScreenshotStateImpl;

  @override
  Uint8List? get screenshot;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ScreenshotStateImplCopyWith<_$ScreenshotStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
