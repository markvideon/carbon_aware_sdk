//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of carbon_aware_sdk;

class CarbonIntensityDTO {
  /// Returns a new [CarbonIntensityDTO] instance.
  CarbonIntensityDTO({
    this.location,
    this.startTime,
    this.endTime,
    this.carbonIntensity,
  });

  /// the location name where workflow is run
  String? location;

  /// the time at which the workflow we are measuring carbon intensity for started
  DateTime? startTime;

  /// the time at which the workflow we are measuring carbon intensity for ended
  DateTime? endTime;

  /// Value of the marginal carbon intensity in grams per kilowatt-hour.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? carbonIntensity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarbonIntensityDTO &&
          other.location == location &&
          other.startTime == startTime &&
          other.endTime == endTime &&
          other.carbonIntensity == carbonIntensity;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (location == null ? 0 : location!.hashCode) +
      (startTime == null ? 0 : startTime!.hashCode) +
      (endTime == null ? 0 : endTime!.hashCode) +
      (carbonIntensity == null ? 0 : carbonIntensity!.hashCode);

  @override
  String toString() =>
      'CarbonIntensityDTO[location=$location, startTime=$startTime, endTime=$endTime, carbonIntensity=$carbonIntensity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'startTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'endTime'] = null;
    }
    if (this.carbonIntensity != null) {
      json[r'carbonIntensity'] = this.carbonIntensity;
    } else {
      json[r'carbonIntensity'] = null;
    }
    return json;
  }

  /// Returns a new [CarbonIntensityDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CarbonIntensityDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CarbonIntensityDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CarbonIntensityDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CarbonIntensityDTO(
        location: mapValueOfType<String>(json, r'location'),
        startTime: mapDateTime(json, r'startTime', ''),
        endTime: mapDateTime(json, r'endTime', ''),
        carbonIntensity: mapValueOfType<double>(json, r'carbonIntensity'),
      );
    }
    return null;
  }

  static List<CarbonIntensityDTO>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CarbonIntensityDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CarbonIntensityDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CarbonIntensityDTO> mapFromJson(dynamic json) {
    final map = <String, CarbonIntensityDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CarbonIntensityDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CarbonIntensityDTO-objects as value to a dart map
  static Map<String, List<CarbonIntensityDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CarbonIntensityDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CarbonIntensityDTO.listFromJson(
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
