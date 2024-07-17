//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveNewspaperFrontPage200ResponseFrontPage {
  /// Returns a new [RetrieveNewspaperFrontPage200ResponseFrontPage] instance.
  RetrieveNewspaperFrontPage200ResponseFrontPage({
    this.name,
    this.date,
    this.country,
    this.image,
    this.language,
  });

  String? name;

  String? date;

  String? country;

  String? image;

  String? language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveNewspaperFrontPage200ResponseFrontPage &&
    other.name == name &&
    other.date == date &&
    other.country == country &&
    other.image == image &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (language == null ? 0 : language!.hashCode);

  @override
  String toString() => 'RetrieveNewspaperFrontPage200ResponseFrontPage[name=$name, date=$date, country=$country, image=$image, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveNewspaperFrontPage200ResponseFrontPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveNewspaperFrontPage200ResponseFrontPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveNewspaperFrontPage200ResponseFrontPage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveNewspaperFrontPage200ResponseFrontPage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveNewspaperFrontPage200ResponseFrontPage(
        name: mapValueOfType<String>(json, r'name'),
        date: mapValueOfType<String>(json, r'date'),
        country: mapValueOfType<String>(json, r'country'),
        image: mapValueOfType<String>(json, r'image'),
        language: mapValueOfType<String>(json, r'language'),
      );
    }
    return null;
  }

  static List<RetrieveNewspaperFrontPage200ResponseFrontPage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveNewspaperFrontPage200ResponseFrontPage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveNewspaperFrontPage200ResponseFrontPage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveNewspaperFrontPage200ResponseFrontPage> mapFromJson(dynamic json) {
    final map = <String, RetrieveNewspaperFrontPage200ResponseFrontPage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveNewspaperFrontPage200ResponseFrontPage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveNewspaperFrontPage200ResponseFrontPage-objects as value to a dart map
  static Map<String, List<RetrieveNewspaperFrontPage200ResponseFrontPage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveNewspaperFrontPage200ResponseFrontPage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveNewspaperFrontPage200ResponseFrontPage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

