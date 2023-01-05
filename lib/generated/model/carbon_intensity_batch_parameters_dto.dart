//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of carbon_aware_sdk;

class CarbonIntensityBatchParametersDTO {
  /// Returns a new [CarbonIntensityBatchParametersDTO] instance.
  CarbonIntensityBatchParametersDTO({
    this.location,
    this.startTime,
    this.endTime,
  });

  /// The location name where workflow is run
  String? location;

  /// The time at which the workflow we are measuring carbon intensity for started
  DateTime? startTime;

  /// The time at which the workflow we are measuring carbon intensity for ended
  DateTime? endTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CarbonIntensityBatchParametersDTO &&
     other.location == location &&
     other.startTime == startTime &&
     other.endTime == endTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (location == null ? 0 : location!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode);

  @override
  String toString() => 'CarbonIntensityBatchParametersDTO[location=$location, startTime=$startTime, endTime=$endTime]';

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
    return json;
  }

  /// Returns a new [CarbonIntensityBatchParametersDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CarbonIntensityBatchParametersDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CarbonIntensityBatchParametersDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CarbonIntensityBatchParametersDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CarbonIntensityBatchParametersDTO(
        location: mapValueOfType<String>(json, r'location'),
        startTime: mapDateTime(json, r'startTime', ''),
        endTime: mapDateTime(json, r'endTime', ''),
      );
    }
    return null;
  }

  static List<CarbonIntensityBatchParametersDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CarbonIntensityBatchParametersDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CarbonIntensityBatchParametersDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CarbonIntensityBatchParametersDTO> mapFromJson(dynamic json) {
    final map = <String, CarbonIntensityBatchParametersDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CarbonIntensityBatchParametersDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CarbonIntensityBatchParametersDTO-objects as value to a dart map
  static Map<String, List<CarbonIntensityBatchParametersDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CarbonIntensityBatchParametersDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CarbonIntensityBatchParametersDTO.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

