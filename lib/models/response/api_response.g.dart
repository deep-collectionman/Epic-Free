// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIResponse _$APIResponseFromJson(Map<String, dynamic> json) => APIResponse(
      freeGames: FreeGames.fromJson(json['freeGames'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APIResponseToJson(APIResponse instance) =>
    <String, dynamic>{
      'freeGames': instance.freeGames,
    };
