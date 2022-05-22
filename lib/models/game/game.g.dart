// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      title: json['title'] as String,
      id: json['id'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      effectiveDate: json['effectiveDate'] as String,
      keyImages: (json['keyImages'] as List<dynamic>)
          .map((e) => KeyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      customAttributes: CustomAttributes.fromJson(
          json['customAttributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'description': instance.description,
      'status': instance.status,
      'effectiveDate': instance.effectiveDate,
      'customAttributes': instance.customAttributes,
      'keyImages': instance.keyImages,
    };
