//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of carbon_aware_sdk;

class EmissionsDataDTO {
  /// Returns a new [EmissionsDataDTO] instance.
  EmissionsDataDTO({
    this.location,
    this.timestamp,
    this.duration,
    this.value,
  });

  String? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmissionsDataDTO &&
     other.location == location &&
     other.timestamp == timestamp &&
     other.duration == duration &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (location == null ? 0 : location!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'EmissionsDataDTO[location=$location, timestamp=$timestamp, duration=$duration, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [EmissionsDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmissionsDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmissionsDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmissionsDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmissionsDataDTO(
        location: mapValueOfType<String>(json, r'location'),
        timestamp: mapDateTime(json, r'timestamp', ''),
        duration: mapValueOfType<int>(json, r'duration'),
        value: mapValueOfType<double>(json, r'value'),
      );
    }
    return null;
  }

  static List<EmissionsDataDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmissionsDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmissionsDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmissionsDataDTO> mapFromJson(dynamic json) {
    final map = <String, EmissionsDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmissionsDataDTO-objects as value to a dart map
  static Map<String, List<EmissionsDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmissionsDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsDataDTO.listFromJson(entry.value, growable: growable,);
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

