import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:project_one/constants/strings.dart';
import 'package:project_one/data/models/character_model.dart';

class CharactersWebServices {
  late Dio dio;
  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000,
      receiveTimeout: 60 * 1000,
    );
    dio = Dio(options);
  }

  // Future<List<Map<String,dynamic>>> getAllCharaters() async {
  //   try {
  //     Response response = await dio.get('characters');
  //     print("toto${response.data}");
  //     return json.decode(response.data);
  //   } catch (e) {
  //     print("nini${e.toString()}");
  //     return [];
  //   }
  // }
  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
