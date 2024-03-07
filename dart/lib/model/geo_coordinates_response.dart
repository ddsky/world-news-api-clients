//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeoCoordinatesResponse {
  /// Returns a new [GeoCoordinatesResponse] instance.
  GeoCoordinatesResponse({
    required this.latitude,
    required this.longitude,
    this.city,
  });

  num latitude;

  num longitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeoCoordinatesResponse &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.city == city;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (latitude.hashCode) +
    (longitude.hashCode) +
    (city == null ? 0 : city!.hashCode);

  @override
  String toString() => 'GeoCoordinatesResponse[latitude=$latitude, longitude=$longitude, city=$city]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'latitude'] = this.latitude;
      json[r'longitude'] = this.longitude;
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    return json;
  }

  /// Returns a new [GeoCoordinatesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeoCoordinatesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GeoCoordinatesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GeoCoordinatesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GeoCoordinatesResponse(
        latitude: num.parse('${json[r'latitude']}'),
        longitude: num.parse('${json[r'longitude']}'),
        city: mapValueOfType<String>(json, r'city'),
      );
    }
    return null;
  }

  static List<GeoCoordinatesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GeoCoordinatesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GeoCoordinatesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GeoCoordinatesResponse> mapFromJson(dynamic json) {
    final map = <String, GeoCoordinatesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GeoCoordinatesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GeoCoordinatesResponse-objects as value to a dart map
  static Map<String, List<GeoCoordinatesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GeoCoordinatesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GeoCoordinatesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'latitude',
    'longitude',
  };
}

