import 'dart:convert';

import 'package:project_one/data/models/character_model.dart';
import 'package:project_one/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);
  
  Future<List<Character>> getAllCharaters() async {
    final characters = await charactersWebServices.getAllCharaters();
    print("characters$characters");
    return characters.map((character) => Character.fromjson(character)).toList();
  }
}
