// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_games.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreeGames _$FreeGamesFromJson(Map<String, dynamic> json) => FreeGames(
      current: (json['current'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      upcoming: (json['upcoming'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FreeGamesToJson(FreeGames instance) => <String, dynamic>{
      'current': instance.current,
      'upcoming': instance.upcoming,
    };
