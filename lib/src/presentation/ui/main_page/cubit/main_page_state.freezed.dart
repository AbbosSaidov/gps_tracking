// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainPageState {
  double get distance => throw _privateConstructorUsedError;
  DateTime get waitTime => throw _privateConstructorUsedError;
  bool get isWaitActive => throw _privateConstructorUsedError;
  bool get isStopwatchRunning => throw _privateConstructorUsedError;
  Duration get elapsedTime => throw _privateConstructorUsedError;
  Position? get currentPosition => throw _privateConstructorUsedError;
  Position? get initialPosition => throw _privateConstructorUsedError;

  /// Create a copy of MainPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call(
      {double distance,
      DateTime waitTime,
      bool isWaitActive,
      bool isStopwatchRunning,
      Duration elapsedTime,
      Position? currentPosition,
      Position? initialPosition});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? waitTime = null,
    Object? isWaitActive = null,
    Object? isStopwatchRunning = null,
    Object? elapsedTime = null,
    Object? currentPosition = freezed,
    Object? initialPosition = freezed,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isWaitActive: null == isWaitActive
          ? _value.isWaitActive
          : isWaitActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopwatchRunning: null == isStopwatchRunning
          ? _value.isStopwatchRunning
          : isStopwatchRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      elapsedTime: null == elapsedTime
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      initialPosition: freezed == initialPosition
          ? _value.initialPosition
          : initialPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainPageStateImplCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$MainPageStateImplCopyWith(
          _$MainPageStateImpl value, $Res Function(_$MainPageStateImpl) then) =
      __$$MainPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double distance,
      DateTime waitTime,
      bool isWaitActive,
      bool isStopwatchRunning,
      Duration elapsedTime,
      Position? currentPosition,
      Position? initialPosition});
}

/// @nodoc
class __$$MainPageStateImplCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$MainPageStateImpl>
    implements _$$MainPageStateImplCopyWith<$Res> {
  __$$MainPageStateImplCopyWithImpl(
      _$MainPageStateImpl _value, $Res Function(_$MainPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? waitTime = null,
    Object? isWaitActive = null,
    Object? isStopwatchRunning = null,
    Object? elapsedTime = null,
    Object? currentPosition = freezed,
    Object? initialPosition = freezed,
  }) {
    return _then(_$MainPageStateImpl(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isWaitActive: null == isWaitActive
          ? _value.isWaitActive
          : isWaitActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopwatchRunning: null == isStopwatchRunning
          ? _value.isStopwatchRunning
          : isStopwatchRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      elapsedTime: null == elapsedTime
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      initialPosition: freezed == initialPosition
          ? _value.initialPosition
          : initialPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$MainPageStateImpl implements _MainPageState {
  const _$MainPageStateImpl(
      {required this.distance,
      required this.waitTime,
      required this.isWaitActive,
      this.isStopwatchRunning = false,
      this.elapsedTime = Duration.zero,
      this.currentPosition,
      this.initialPosition});

  @override
  final double distance;
  @override
  final DateTime waitTime;
  @override
  final bool isWaitActive;
  @override
  @JsonKey()
  final bool isStopwatchRunning;
  @override
  @JsonKey()
  final Duration elapsedTime;
  @override
  final Position? currentPosition;
  @override
  final Position? initialPosition;

  @override
  String toString() {
    return 'MainPageState(distance: $distance, waitTime: $waitTime, isWaitActive: $isWaitActive, isStopwatchRunning: $isStopwatchRunning, elapsedTime: $elapsedTime, currentPosition: $currentPosition, initialPosition: $initialPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageStateImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            (identical(other.isWaitActive, isWaitActive) ||
                other.isWaitActive == isWaitActive) &&
            (identical(other.isStopwatchRunning, isStopwatchRunning) ||
                other.isStopwatchRunning == isStopwatchRunning) &&
            (identical(other.elapsedTime, elapsedTime) ||
                other.elapsedTime == elapsedTime) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.initialPosition, initialPosition) ||
                other.initialPosition == initialPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distance, waitTime, isWaitActive,
      isStopwatchRunning, elapsedTime, currentPosition, initialPosition);

  /// Create a copy of MainPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPageStateImplCopyWith<_$MainPageStateImpl> get copyWith =>
      __$$MainPageStateImplCopyWithImpl<_$MainPageStateImpl>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {required final double distance,
      required final DateTime waitTime,
      required final bool isWaitActive,
      final bool isStopwatchRunning,
      final Duration elapsedTime,
      final Position? currentPosition,
      final Position? initialPosition}) = _$MainPageStateImpl;

  @override
  double get distance;
  @override
  DateTime get waitTime;
  @override
  bool get isWaitActive;
  @override
  bool get isStopwatchRunning;
  @override
  Duration get elapsedTime;
  @override
  Position? get currentPosition;
  @override
  Position? get initialPosition;

  /// Create a copy of MainPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainPageStateImplCopyWith<_$MainPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
