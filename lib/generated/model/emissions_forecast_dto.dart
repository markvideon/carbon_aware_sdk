//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of carbon_aware_sdk;

class EmissionsForecastDTO {
  /// Returns a new [EmissionsForecastDTO] instance.
  EmissionsForecastDTO({
    this.generatedAt,
    this.requestedAt,
    this.location,
    this.dataStartAt,
    this.dataEndAt,
    this.windowSize,
    this.optimalDataPoints = const [],
    this.forecastData = const [],
  });

  /// Timestamp when the forecast was generated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? generatedAt;

  /// For current requests, this value is the timestamp the request for forecast data was made.  For historical forecast requests, this value is the timestamp used to access the most   recently generated forecast as of that time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? requestedAt;

  /// The location of the forecast
  String? location;

  /// Start time boundary of forecasted data points. Ignores forecast data points before this time.  Defaults to the earliest time in the forecast data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dataStartAt;

  /// End time boundary of forecasted data points. Ignores forecast data points after this time.  Defaults to the latest time in the forecast data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dataEndAt;

  /// The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowSize;

  /// The optimal forecasted data point within the 'forecastData' array.  Null if 'forecastData' array is empty.
  List<EmissionsDataDTO>? optimalDataPoints;

  /// The forecasted data points transformed and filtered to reflect the specified time and window parameters.  Points are ordered chronologically; Empty array if all data points were filtered out.  E.G. dataStartAt and dataEndAt times outside the forecast period; windowSize greater than total duration of forecast data;
  List<EmissionsDataDTO>? forecastData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmissionsForecastDTO &&
          other.generatedAt == generatedAt &&
          other.requestedAt == requestedAt &&
          other.location == location &&
          other.dataStartAt == dataStartAt &&
          other.dataEndAt == dataEndAt &&
          other.windowSize == windowSize &&
          other.optimalDataPoints == optimalDataPoints &&
          other.forecastData == forecastData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (generatedAt == null ? 0 : generatedAt!.hashCode) +
      (requestedAt == null ? 0 : requestedAt!.hashCode) +
      (location == null ? 0 : location!.hashCode) +
      (dataStartAt == null ? 0 : dataStartAt!.hashCode) +
      (dataEndAt == null ? 0 : dataEndAt!.hashCode) +
      (windowSize == null ? 0 : windowSize!.hashCode) +
      (optimalDataPoints == null ? 0 : optimalDataPoints!.hashCode) +
      (forecastData == null ? 0 : forecastData!.hashCode);

  @override
  String toString() =>
      'EmissionsForecastDTO[generatedAt=$generatedAt, requestedAt=$requestedAt, location=$location, dataStartAt=$dataStartAt, dataEndAt=$dataEndAt, windowSize=$windowSize, optimalDataPoints=$optimalDataPoints, forecastData=$forecastData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt!.toUtc().toIso8601String();
    } else {
      json[r'generatedAt'] = null;
    }
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
    if (this.optimalDataPoints != null) {
      json[r'optimalDataPoints'] = this.optimalDataPoints;
    } else {
      json[r'optimalDataPoints'] = null;
    }
    if (this.forecastData != null) {
      json[r'forecastData'] = this.forecastData;
    } else {
      json[r'forecastData'] = null;
    }
    return json;
  }

  /// Returns a new [EmissionsForecastDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmissionsForecastDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmissionsForecastDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmissionsForecastDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmissionsForecastDTO(
        generatedAt: mapDateTime(json, r'generatedAt', ''),
        requestedAt: mapDateTime(json, r'requestedAt', ''),
        location: mapValueOfType<String>(json, r'location'),
        dataStartAt: mapDateTime(json, r'dataStartAt', ''),
        dataEndAt: mapDateTime(json, r'dataEndAt', ''),
        windowSize: mapValueOfType<int>(json, r'windowSize'),
        optimalDataPoints:
            EmissionsDataDTO.listFromJson(json[r'optimalDataPoints']) ??
                const [],
        forecastData:
            EmissionsDataDTO.listFromJson(json[r'forecastData']) ?? const [],
      );
    }
    return null;
  }

  static List<EmissionsForecastDTO>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmissionsForecastDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmissionsForecastDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmissionsForecastDTO> mapFromJson(dynamic json) {
    final map = <String, EmissionsForecastDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsForecastDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmissionsForecastDTO-objects as value to a dart map
  static Map<String, List<EmissionsForecastDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmissionsForecastDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsForecastDTO.listFromJson(
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
