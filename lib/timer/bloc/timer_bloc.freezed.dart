// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) ticked,
    required TResult Function() stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? ticked,
    TResult? Function()? stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? ticked,
    TResult Function()? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerTicked value) ticked,
    required TResult Function(TimerStopped value) stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerTicked value)? ticked,
    TResult? Function(TimerStopped value)? stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerTicked value)? ticked,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimerStartedImplCopyWith<$Res> {
  factory _$$TimerStartedImplCopyWith(
          _$TimerStartedImpl value, $Res Function(_$TimerStartedImpl) then) =
      __$$TimerStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStartedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerStartedImpl>
    implements _$$TimerStartedImplCopyWith<$Res> {
  __$$TimerStartedImplCopyWithImpl(
      _$TimerStartedImpl _value, $Res Function(_$TimerStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerStartedImpl implements TimerStarted {
  const _$TimerStartedImpl();

  @override
  String toString() {
    return 'TimerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) ticked,
    required TResult Function() stopped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? ticked,
    TResult? Function()? stopped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? ticked,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerTicked value) ticked,
    required TResult Function(TimerStopped value) stopped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerTicked value)? ticked,
    TResult? Function(TimerStopped value)? stopped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerTicked value)? ticked,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TimerStarted implements TimerEvent {
  const factory TimerStarted() = _$TimerStartedImpl;
}

/// @nodoc
abstract class _$$TimerTickedImplCopyWith<$Res> {
  factory _$$TimerTickedImplCopyWith(
          _$TimerTickedImpl value, $Res Function(_$TimerTickedImpl) then) =
      __$$TimerTickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerTickedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerTickedImpl>
    implements _$$TimerTickedImplCopyWith<$Res> {
  __$$TimerTickedImplCopyWithImpl(
      _$TimerTickedImpl _value, $Res Function(_$TimerTickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerTickedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerTickedImpl implements TimerTicked {
  const _$TimerTickedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.ticked(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTickedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerTickedImplCopyWith<_$TimerTickedImpl> get copyWith =>
      __$$TimerTickedImplCopyWithImpl<_$TimerTickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) ticked,
    required TResult Function() stopped,
  }) {
    return ticked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? ticked,
    TResult? Function()? stopped,
  }) {
    return ticked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? ticked,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerTicked value) ticked,
    required TResult Function(TimerStopped value) stopped,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerTicked value)? ticked,
    TResult? Function(TimerStopped value)? stopped,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerTicked value)? ticked,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class TimerTicked implements TimerEvent {
  const factory TimerTicked(final int duration) = _$TimerTickedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerTickedImplCopyWith<_$TimerTickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStoppedImplCopyWith<$Res> {
  factory _$$TimerStoppedImplCopyWith(
          _$TimerStoppedImpl value, $Res Function(_$TimerStoppedImpl) then) =
      __$$TimerStoppedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStoppedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerStoppedImpl>
    implements _$$TimerStoppedImplCopyWith<$Res> {
  __$$TimerStoppedImplCopyWithImpl(
      _$TimerStoppedImpl _value, $Res Function(_$TimerStoppedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerStoppedImpl implements TimerStopped {
  const _$TimerStoppedImpl();

  @override
  String toString() {
    return 'TimerEvent.stopped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerStoppedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) ticked,
    required TResult Function() stopped,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? ticked,
    TResult? Function()? stopped,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? ticked,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerTicked value) ticked,
    required TResult Function(TimerStopped value) stopped,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerTicked value)? ticked,
    TResult? Function(TimerStopped value)? stopped,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerTicked value)? ticked,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class TimerStopped implements TimerEvent {
  const factory TimerStopped() = _$TimerStoppedImpl;
}

/// @nodoc
mixin _$TimerState {
  int get duration => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call({int duration, bool isRunning});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? isRunning = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerStateImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerStateImplCopyWith(
          _$TimerStateImpl value, $Res Function(_$TimerStateImpl) then) =
      __$$TimerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration, bool isRunning});
}

/// @nodoc
class __$$TimerStateImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateImpl>
    implements _$$TimerStateImplCopyWith<$Res> {
  __$$TimerStateImplCopyWithImpl(
      _$TimerStateImpl _value, $Res Function(_$TimerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? isRunning = null,
  }) {
    return _then(_$TimerStateImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TimerStateImpl implements _TimerState {
  const _$TimerStateImpl({required this.duration, required this.isRunning});

  @override
  final int duration;
  @override
  final bool isRunning;

  @override
  String toString() {
    return 'TimerState(duration: $duration, isRunning: $isRunning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStateImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, isRunning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStateImplCopyWith<_$TimerStateImpl> get copyWith =>
      __$$TimerStateImplCopyWithImpl<_$TimerStateImpl>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState(
      {required final int duration,
      required final bool isRunning}) = _$TimerStateImpl;

  @override
  int get duration;
  @override
  bool get isRunning;
  @override
  @JsonKey(ignore: true)
  _$$TimerStateImplCopyWith<_$TimerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
