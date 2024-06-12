//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TopNews200ResponseTopNewsInnerNewsInner {
  /// Returns a new [TopNews200ResponseTopNewsInnerNewsInner] instance.
  TopNews200ResponseTopNewsInnerNewsInner({
    this.summary,
    this.image,
    this.author,
    this.id,
    this.text,
    this.title,
    this.publishDate,
    this.url,
    this.authors = const [],
  });

  String? summary;

  String? image;

  String? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? text;

  String? title;

  String? publishDate;

  String? url;

  List<String> authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TopNews200ResponseTopNewsInnerNewsInner &&
    other.summary == summary &&
    other.image == image &&
    other.author == author &&
    other.id == id &&
    other.text == text &&
    other.title == title &&
    other.publishDate == publishDate &&
    other.url == url &&
    _deepEquality.equals(other.authors, authors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (summary == null ? 0 : summary!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (publishDate == null ? 0 : publishDate!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (authors.hashCode);

  @override
  String toString() => 'TopNews200ResponseTopNewsInnerNewsInner[summary=$summary, image=$image, author=$author, id=$id, text=$text, title=$title, publishDate=$publishDate, url=$url, authors=$authors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.publishDate != null) {
      json[r'publish_date'] = this.publishDate;
    } else {
      json[r'publish_date'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
      json[r'authors'] = this.authors;
    return json;
  }

  /// Returns a new [TopNews200ResponseTopNewsInnerNewsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TopNews200ResponseTopNewsInnerNewsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TopNews200ResponseTopNewsInnerNewsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TopNews200ResponseTopNewsInnerNewsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TopNews200ResponseTopNewsInnerNewsInner(
        summary: mapValueOfType<String>(json, r'summary'),
        image: mapValueOfType<String>(json, r'image'),
        author: mapValueOfType<String>(json, r'author'),
        id: mapValueOfType<int>(json, r'id'),
        text: mapValueOfType<String>(json, r'text'),
        title: mapValueOfType<String>(json, r'title'),
        publishDate: mapValueOfType<String>(json, r'publish_date'),
        url: mapValueOfType<String>(json, r'url'),
        authors: json[r'authors'] is Iterable
            ? (json[r'authors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<TopNews200ResponseTopNewsInnerNewsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TopNews200ResponseTopNewsInnerNewsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TopNews200ResponseTopNewsInnerNewsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TopNews200ResponseTopNewsInnerNewsInner> mapFromJson(dynamic json) {
    final map = <String, TopNews200ResponseTopNewsInnerNewsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TopNews200ResponseTopNewsInnerNewsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TopNews200ResponseTopNewsInnerNewsInner-objects as value to a dart map
  static Map<String, List<TopNews200ResponseTopNewsInnerNewsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TopNews200ResponseTopNewsInnerNewsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TopNews200ResponseTopNewsInnerNewsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

