import 'package:flutter/material.dart';
import 'package:project_one/constants/strings.dart';
import 'package:project_one/presentation/screens/characters_screen.dart';
import 'package:project_one/presentation/screens/charaters_screnn_details.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharatersDetailsScreen());
    }
  }
}
