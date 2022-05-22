import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/response/api_response.dart';

abstract class Service {
  Future<APIResponse> getFreeGames();
}

class FreeEpicGamesService implements Service {
  @override
  Future<APIResponse> getFreeGames() async {
    final BaseRequest request = Request(
      'GET',
      Uri(host: dotenv.get('API_HOST'), path: 'free', scheme: 'https',),
    );

    request.headers.addAll({
      "X-RapidAPI-Host" : dotenv.get('API_HOST'),
      "X-RapidAPI-Key" : dotenv.get('API_KEY')
    });

    final streamedResponse = await request.send();

    if (streamedResponse.statusCode == 200) {
      final response = await Response.fromStream(streamedResponse);
      final decodedJson = jsonDecode(response.body);
      return APIResponse.fromJson(decodedJson);
    }

    throw const HttpException('Failed to request recipes from the server');
  }
}

class DummyFreeEpicGamesService implements Service {
  bool throwsError = false;

  @override
  Future<APIResponse> getFreeGames() async {
    return Future<APIResponse>.delayed((const Duration(seconds: 2)), () {
      return throwsError ? throw const HttpException('Failed to request recipes from the server') : dummyApiResponse;
    });
  }
}