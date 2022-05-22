import 'package:json_annotation/json_annotation.dart';

import '../free_games/free_games.dart';

part 'api_response.g.dart';

@JsonSerializable()
class APIResponse {
  final FreeGames freeGames;

  APIResponse({required this.freeGames});

  factory APIResponse.fromJson(Map<String, dynamic> json) => _$APIResponseFromJson(json);

  Map<String, dynamic> toJson() => _$APIResponseToJson(this);
}

final APIResponse dummyApiResponse = APIResponse(freeGames: dummyFreeGames,);