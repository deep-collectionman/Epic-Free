// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomAttributes _$CustomAttributesFromJson(Map<String, dynamic> json) =>
    CustomAttributes(
      publisherAttribute: json['publisherAttribute'] == null
          ? null
          : Attribute.fromJson(
              json['publisherAttribute'] as Map<String, dynamic>),
      developerAttribute: Attribute.fromJson(
          json['developerAttribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomAttributesToJson(CustomAttributes instance) =>
    <String, dynamic>{
      'publisherAttribute': instance.publisherAttribute,
      'developerAttribute': instance.developerAttribute,
    };
