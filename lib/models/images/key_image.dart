import 'package:json_annotation/json_annotation.dart';

part 'key_image.g.dart';

@JsonSerializable()
class KeyImage {
  final String type;
  final String url;

  KeyImage({
    required this.type,
    required this.url
  });

  factory KeyImage.fromJson(Map<String, dynamic> json) => _$KeyImageFromJson(json);

  Map<String, dynamic> toJson() => _$KeyImageToJson(this);
}