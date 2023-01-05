//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of carbon_aware_sdk;

class EmissionsData {
  /// Returns a new [EmissionsData] instance.
  EmissionsData({
    this.location,
    this.time,
    this.rating,
    this.duration,
  });

  String? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmissionsData &&
          other.location == location &&
          other.time == time &&
          other.rating == rating &&
          other.duration == duration;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (location == null ? 0 : location!.hashCode) +
      (time == null ? 0 : time!.hashCode) +
      (rating == null ? 0 : rating!.hashCode) +
      (duration == null ? 0 : duration!.hashCode);

  @override
  String toString() =>
      'EmissionsData[location=$location, time=$time, rating=$rating, duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'time'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    return json;
  }

  /// Returns a new [EmissionsData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmissionsData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmissionsData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmissionsData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmissionsData(
        location: mapValueOfType<String>(json, r'location'),
        time: mapDateTime(json, r'time', ''),
        rating: mapValueOfType<double>(json, r'rating'),
        duration: mapValueOfType<String>(json, r'duration'),
      );
    }
    return null;
  }

  static List<EmissionsData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmissionsData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmissionsData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmissionsData> mapFromJson(dynamic json) {
    final map = <String, EmissionsData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmissionsData-objects as value to a dart map
  static Map<String, List<EmissionsData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmissionsData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmissionsData.listFromJson(
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
