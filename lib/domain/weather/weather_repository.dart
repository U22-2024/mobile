import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobile/domain/grpc/auth_interceptor.dart';
import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/advice/v1/advice_outing.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository.freezed.dart';
part 'weather_repository.g.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required bool isRequireUmbrella,
    required double maxRainfall,
  }) = _WeatherState;
}

@riverpod
AdviceOutingServiceClient _client(_ClientRef ref) {
  final channel = ref.watch(grpcChannelProvider);
  return AdviceOutingServiceClient(channel, interceptors: [AuthInterceptor()]);
}

@riverpod
Future<WeatherState?> getWeather(GetWeatherRef ref) async {
  final isEnableGeoLocation = await Geolocator.isLocationServiceEnabled();
  if (!isEnableGeoLocation) {
    return null;
  }
  final geoPermission = await Geolocator.checkPermission();
  if (geoPermission == LocationPermission.denied) {
    return null;
  }
  final position = await Geolocator.getCurrentPosition();

  final client = ref.read(_clientProvider);
  final res = await client.getAdvice(
    GetAdviceRequest(
      pos: Location(
        latitude: position.latitude,
        longitude: position.longitude,
      ),
    ),
  );
  return WeatherState(
    isRequireUmbrella: res.isRequireUmbrella,
    maxRainfall: res.maxRainfall,
  );
}
