//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetGeoCoordinates200Response {
  /// Returns a new [GetGeoCoordinates200Response] instance.
  GetGeoCoordinates200Response({
    this.latitude,
    this.longitude,
    this.city,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? longitude;

  String? city;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetGeoCoordinates200Response &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.city == city;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (city == null ? 0 : city!.hashCode);

  @override
  String toString() => 'GetGeoCoordinates200Response[latitude=$latitude, longitude=$longitude, city=$city]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    return json;
  }

  /// Returns a new [GetGeoCoordinates200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetGeoCoordinates200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetGeoCoordinates200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetGeoCoordinates200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetGeoCoordinates200Response(
        latitude: num.parse('${json[r'latitude']}'),
        longitude: num.parse('${json[r'longitude']}'),
        city: mapValueOfType<String>(json, r'city'),
      );
    }
    return null;
  }

  static List<GetGeoCoordinates200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetGeoCoordinates200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetGeoCoordinates200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetGeoCoordinates200Response> mapFromJson(dynamic json) {
    final map = <String, GetGeoCoordinates200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetGeoCoordinates200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetGeoCoordinates200Response-objects as value to a dart map
  static Map<String, List<GetGeoCoordinates200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetGeoCoordinates200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetGeoCoordinates200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

