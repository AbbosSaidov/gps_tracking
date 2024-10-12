import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit()
      : super(MainPageState(
            distance: 0, waitTime: DateTime.now(), isWaitActive: false)) {
    _initializeLocationServices();
  }

  Timer? _stopwatchTimer;
  DateTime? _stopwatchStartTime;
  Position? _lastPosition;
  static const double _movementThreshold = 0.03; // 30 meters in km

  Future<void> _initializeLocationServices() async {
    _checkAndRequestLocationPermissions();
    final initialPosition = await Geolocator.getCurrentPosition();
    emit(state.copyWith(
      initialPosition: initialPosition,
      currentPosition: initialPosition,
    ));

    _startLocationTracking();
  }

  Future<bool> _checkAndRequestLocationPermissions() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    return permission != LocationPermission.deniedForever;
  }

  void _startLocationTracking() {
    Geolocator.getPositionStream().listen(_handlePositionUpdate);
  }

  void _handlePositionUpdate(Position position) {
    final distanceTraveled = _calculateDistanceTraveled(position);
    final hasMovedSignificantly = _hasMovedSignificantly(position);

    if (hasMovedSignificantly && state.isStopwatchRunning) {
      _stopStopwatch();
    }

    emit(state.copyWith(
      currentPosition: position,
      distance: distanceTraveled,
    ));

    _lastPosition = position;
  }

  double _calculateDistanceTraveled(Position currentPosition) {
    if (state.initialPosition == null) return 0.0;

    return Geolocator.distanceBetween(
          state.initialPosition!.latitude,
          state.initialPosition!.longitude,
          currentPosition.latitude,
          currentPosition.longitude,
        ) /
        1000; // Convert meters to kilometers
  }

  bool _hasMovedSignificantly(Position currentPosition) {
    if (_lastPosition == null) return false;

    final movement = Geolocator.distanceBetween(
          _lastPosition!.latitude,
          _lastPosition!.longitude,
          currentPosition.latitude,
          currentPosition.longitude,
        ) /
        1000; // Convert meters to kilometers

    return movement > _movementThreshold;
  }

  void toggleStopwatch() {
    state.isStopwatchRunning ? _stopStopwatch() : _startStopwatch();
  }

  void _startStopwatch() {
    emit(state.copyWith(isStopwatchRunning: true));
    _stopwatchStartTime = DateTime.now().subtract(state.elapsedTime);
    _stopwatchTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      final elapsedTime = DateTime.now().difference(_stopwatchStartTime!);
      emit(state.copyWith(elapsedTime: elapsedTime, isStopwatchRunning: true));
    });
  }

  void _stopStopwatch() {
    _stopwatchTimer?.cancel();
    emit(state.copyWith(isStopwatchRunning: false));
  }

  void resetStopwatch() {
    _stopStopwatch();
    emit(state.copyWith(elapsedTime: Duration.zero));
  }

  @override
  Future<void> close() {
    _stopwatchTimer?.cancel();
    return super.close();
  }
}
