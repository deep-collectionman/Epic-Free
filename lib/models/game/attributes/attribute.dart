import 'package:json_annotation/json_annotation.dart';

part 'attribute.g.dart';

@JsonSerializable()
class Attribute {
  final String key;
  final dynamic value;

  Attribute({
    required this.key,
    required this.value
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => _$AttributeFromJson(json);

  Map<String, dynamic>  toJson() => _$AttributeToJson(this);
}