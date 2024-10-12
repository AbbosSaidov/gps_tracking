import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'main_page_state.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState(
      {required double distance,
      required DateTime waitTime,
      required bool isWaitActive,
      @Default(false) bool isStopwatchRunning,
      @Default(Duration.zero) Duration elapsedTime,
      Position? currentPosition,
      Position? initialPosition}) = _MainPageState;
}
