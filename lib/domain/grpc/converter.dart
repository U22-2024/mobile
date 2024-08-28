import "package:geolocator/geolocator.dart";
import "package:mobile/proto/event/v1/core.pb.dart" as $core;

extension DateTimeExt on DateTime {
  $core.DateTime toGrpcDateTime() {
    return $core.DateTime(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
    );
  }
}

extension GrpcDateTimeExt on $core.DateTime {
  DateTime? toDateTime() {
    if (year == 0 && month == 0 && day == 0 && hour == 0 && minute == 0) {
      return null;
    }
    return DateTime(
      year,
      month,
      day,
      hour,
      minute,
    );
  }
}

extension PositionExt on Position {
  $core.Pos toGrpcPos() {
    return $core.Pos(
      lat: latitude,
      lon: longitude,
    );
  }
}
