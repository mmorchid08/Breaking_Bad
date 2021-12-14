import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_one/business_logic/cubit/characters_cubit.dart';
import 'package:project_one/constants/strings.dart';
import 'package:project_one/data/repository/characters_repository.dart';
import 'package:project_one/data/web_services/characters_web_services.dart';
import 'package:project_one/presentation/screens/characters_screen.dart';
import 'package:project_one/presentation/screens/charaters_screnn_details.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharatersDetailsScreen());
    }
  }
}
