//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchNewsSources200Response {
  /// Returns a new [SearchNewsSources200Response] instance.
  SearchNewsSources200Response({
    this.available,
    this.sources = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? available;

  List<SearchNewsSources200ResponseSourcesInner> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchNewsSources200Response &&
    other.available == available &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'SearchNewsSources200Response[available=$available, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [SearchNewsSources200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchNewsSources200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchNewsSources200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchNewsSources200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchNewsSources200Response(
        available: mapValueOfType<int>(json, r'available'),
        sources: SearchNewsSources200ResponseSourcesInner.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<SearchNewsSources200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchNewsSources200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchNewsSources200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchNewsSources200Response> mapFromJson(dynamic json) {
    final map = <String, SearchNewsSources200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchNewsSources200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchNewsSources200Response-objects as value to a dart map
  static Map<String, List<SearchNewsSources200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchNewsSources200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchNewsSources200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

