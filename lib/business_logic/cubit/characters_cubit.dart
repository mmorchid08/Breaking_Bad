import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_one/data/models/character_model.dart';
import 'package:project_one/data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  late List<Character> characters;
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharaters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters; 
    });
    return characters;
  }
}
