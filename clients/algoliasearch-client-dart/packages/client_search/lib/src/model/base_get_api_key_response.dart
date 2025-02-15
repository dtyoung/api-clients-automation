// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'base_get_api_key_response.g.dart';

@JsonSerializable()
final class BaseGetApiKeyResponse {
  /// Returns a new [BaseGetApiKeyResponse] instance.
  const BaseGetApiKeyResponse({
    required this.value,
    required this.createdAt,
  });

  /// API key.
  @JsonKey(name: r'value')
  final String value;

  /// Timestamp when the object was created, in milliseconds since the Unix epoch.
  @JsonKey(name: r'createdAt')
  final int createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseGetApiKeyResponse &&
          other.value == value &&
          other.createdAt == createdAt;

  @override
  int get hashCode => value.hashCode + createdAt.hashCode;

  factory BaseGetApiKeyResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseGetApiKeyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseGetApiKeyResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
