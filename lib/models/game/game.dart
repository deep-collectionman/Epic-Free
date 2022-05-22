import 'package:epic_free/models/game/attributes/custom_attributes.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import '../images/key_image.dart';

part 'game.g.dart';

@JsonSerializable()
class Game {
  final String title;
  final String id;
  final String description;
  final String status;
  final String effectiveDate;
  final CustomAttributes customAttributes;
  final List<KeyImage> keyImages;

  bool get isActive => status == 'ACTIVE';
  String? get publisher => customAttributes.publisherAttribute?.value;
  String get developer => customAttributes.developerAttribute.value;
  String get effectiveDateFormatted => DateFormat.yMMMMEEEEd().format(DateTime.parse(effectiveDate));

  Game({
    required this.title,
    required this.id,
    required this.description,
    required this.status,
    required this.effectiveDate,
    required this.keyImages,
    required this.customAttributes,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}

