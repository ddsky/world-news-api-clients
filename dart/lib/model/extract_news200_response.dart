//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractNews200Response {
  /// Returns a new [ExtractNews200Response] instance.
  ExtractNews200Response({
    this.title,
    this.text,
    this.url,
    this.image,
    this.images = const [],
    this.video,
    this.videos = const [],
    this.publishDate,
    this.author,
    this.authors = const [],
    this.language,
  });

  String? title;

  String? text;

  String? url;

  String? image;

  List<ExtractNews200ResponseImagesInner> images;

  String? video;

  List<ExtractNews200ResponseVideosInner> videos;

  String? publishDate;

  String? author;

  List<String> authors;

  String? language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractNews200Response &&
    other.title == title &&
    other.text == text &&
    other.url == url &&
    other.image == image &&
    _deepEquality.equals(other.images, images) &&
    other.video == video &&
    _deepEquality.equals(other.videos, videos) &&
    other.publishDate == publishDate &&
    other.author == author &&
    _deepEquality.equals(other.authors, authors) &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (images.hashCode) +
    (video == null ? 0 : video!.hashCode) +
    (videos.hashCode) +
    (publishDate == null ? 0 : publishDate!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (authors.hashCode) +
    (language == null ? 0 : language!.hashCode);

  @override
  String toString() => 'ExtractNews200Response[title=$title, text=$text, url=$url, image=$image, images=$images, video=$video, videos=$videos, publishDate=$publishDate, author=$author, authors=$authors, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
      json[r'images'] = this.images;
    if (this.video != null) {
      json[r'video'] = this.video;
    } else {
      json[r'video'] = null;
    }
      json[r'videos'] = this.videos;
    if (this.publishDate != null) {
      json[r'publish_date'] = this.publishDate;
    } else {
      json[r'publish_date'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
      json[r'authors'] = this.authors;
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractNews200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractNews200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractNews200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractNews200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractNews200Response(
        title: mapValueOfType<String>(json, r'title'),
        text: mapValueOfType<String>(json, r'text'),
        url: mapValueOfType<String>(json, r'url'),
        image: mapValueOfType<String>(json, r'image'),
        images: ExtractNews200ResponseImagesInner.listFromJson(json[r'images']),
        video: mapValueOfType<String>(json, r'video'),
        videos: ExtractNews200ResponseVideosInner.listFromJson(json[r'videos']),
        publishDate: mapValueOfType<String>(json, r'publish_date'),
        author: mapValueOfType<String>(json, r'author'),
        authors: json[r'authors'] is Iterable
            ? (json[r'authors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        language: mapValueOfType<String>(json, r'language'),
      );
    }
    return null;
  }

  static List<ExtractNews200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractNews200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractNews200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractNews200Response> mapFromJson(dynamic json) {
    final map = <String, ExtractNews200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractNews200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractNews200Response-objects as value to a dart map
  static Map<String, List<ExtractNews200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractNews200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractNews200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

