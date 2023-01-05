//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of carbon_aware_sdk;

class EmissionsForecastBatchParametersDTO {
  /// Returns a new [EmissionsForecastBatchParametersDTO] instance.
  EmissionsForecastBatchParametersDTO({
    this.requestedAt,
    this.location,
    this.dataStartAt,
    this.dataEndAt,
    this.windowSize,
  });

  /// For historical forecast requests, this value is the timestamp used to access the most  recently generated forecast as of that time.
  DateTime? requestedAt;

  /// The location of the forecast
  String? location;

  /// Start time boundary of forecasted data points.Ignores current forecast data points before this time.  Defaults to the earliest time in the forecast data.
  DateTime? dataStartAt;

  /// End time boundary of forecasted data points. Ignores current forecast data points after this time.  Defaults to the latest time in the forecast data.
  DateTime? dataEndAt;

  /// The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point.
  int? windowSize;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmissionsForecastBatchParametersDTO &&
          other.requestedAt == requestedAt &&
          other.location == location &&
          other.dataStartAt == dataStartAt &&
          other.dataEndAt == dataEndAt &&
          other.windowSize == windowSize;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (requestedAt == null ? 0 : requestedAt!.hashCode) +
      (location == null ? 0 : location!.hashCode) +
      (dataStartAt == null ? 0 : dataStartAt!.hashCode) +
      (dataEndAt == null ? 0 : dataEndAt!.hashCode) +
      (windowSize == null ? 0 : windowSize!.hashCode);

  @override
  String toString() =>
      'EmissionsForecastBatchParametersDTO[requestedAt=$requestedAt, location=$location, dataStartAt=$dataStartAt, dataEndAt=$dataEndAt, windowSize=$windowSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.requestedAt != null) {
      json[r'requestedAt'] = this.requestedAt!.toUtc().toIso8601String();
    } else {
      json[r'requestedAt'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.dataStartAt != null) {
      json[r'dataStartAt'] = this.dataStartAt!.toUtc().toIso8601String();
    } else {
      json[r'dataStartAt'] = null;
    }
    if (this.dataEndAt != null) {
      json[r'dataEndAt'] = this.dataEndAt!.toUtc().toIso8601String();
    } else {
      json[r'dataEndAt'] = null;
    }
    if (this.windowSize != null) {
      json[r'windowSize'] = this.windowSize;
    } else {
      json[r'windowSize'] = null;
    }
    return json;
  }

  /// Returns a new [EmissionsForecastBatchParametersDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmissionsForecastBatchParametersDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmissionsForecastBatchParametersDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmissionsForecastBatchParametersDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmissionsForecastBatchParametersDTO(
        requestedAt: mapDateTime(json, r'requestedAt', ''),
        location: mapValueOfType<String>(json, r'location'),
        dataStartAt: mapDateTime(json, r'dataStartAt', ''),
        dataEndAt: mapDateTime(json, r'dataEndAt', ''),
        windowSize: mapValueOfType<int>(json, r'windowSize'),
      );
    }
    return null;
  }

  static List<EmissionsForecastBatchParametersDTO>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmissionsForecastBatchParametersDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmissionsForecastBatchParametersDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmissionsForecastBatchParametersDTO> mapFromJson(
      dynamic json) {
    final map = <String, EmissionsForecastBatchParametersDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsForecastBatchParametersDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmissionsForecastBatchParametersDTO-objects as value to a dart map
  static Map<String, List<EmissionsForecastBatchParametersDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmissionsForecastBatchParametersDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsForecastBatchParametersDTO.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
