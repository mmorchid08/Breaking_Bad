import 'package:flutter/material.dart';

class Character {
  late int charId;
  late String name;
  late String birthday;
  late List<dynamic> occupation;
  late String image;
  late String status;
  late String nickName;
  late List<dynamic> appearance;
  late String protrayed;
  late List<dynamic> betterCallSaulApperance;

  Character.fromjson(Map<String, dynamic> json) {
    charId = json["char_id"];
    name = json["name"];
    birthday = json["birthday"];
    occupation = json["occupation"];
    image = json["img"];
    status = json["status"];
    nickName = json["nickname"];
    appearance = json["appearance"];
    protrayed = json["portrayed"];
    betterCallSaulApperance = json["better_call_saul_appearance"];
  }
}
