import 'package:json_annotation/json_annotation.dart';

import 'package:epic_free/models/game/attributes/attribute.dart';

part 'custom_attributes.g.dart';

@JsonSerializable()
class CustomAttributes {
  final Attribute? publisherAttribute;
  final Attribute developerAttribute;

  CustomAttributes({
    this.publisherAttribute,
    required this.developerAttribute
  });

  factory CustomAttributes.fromJson(Map<String, dynamic> json) => _$CustomAttributesFromJson(json);

  Map<String, dynamic>  toJson() => _$CustomAttributesToJson(this);
}