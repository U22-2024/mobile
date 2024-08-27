import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'geo_locate_repository.freezed.dart';
part 'geo_locate_repository.g.dart';

@freezed
class State with _$State {
  const factory State({
    required bool isServiceEnabled,
    required LocationPermission permission,
    Position? position,
  }) = _State;
}

@riverpod
class GeoLocateRepository extends _$GeoLocateRepository {
  @override
  Future<State> build() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    final permission = await Geolocator.checkPermission();

    final position =
        serviceEnabled && permission == LocationPermission.whileInUse ||
                permission == LocationPermission.always
            ? await Geolocator.getCurrentPosition()
            : null;

    return State(
      isServiceEnabled: serviceEnabled,
      permission: permission,
      position: position,
    );
  }

  Future<void> requestPermission() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Geolocator.requestPermission();
      final permission = await Geolocator.checkPermission();
      final position = permission == LocationPermission.whileInUse ||
              permission == LocationPermission.always
          ? await Geolocator.getCurrentPosition()
          : null;

      return State(
        isServiceEnabled: true,
        permission: permission,
        position: position,
      );
    });
  }
}
