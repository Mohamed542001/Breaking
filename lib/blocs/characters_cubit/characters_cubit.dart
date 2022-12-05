import 'package:bloc/bloc.dart';
import 'package:breaking/models/characters_model/characters_model.dart';
import 'package:breaking/repositories/characters_repository/characters_repository.dart';
import 'package:flutter/material.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {

  final CharactersRepository charactersRepository;

  List<CharactersModel> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<CharactersModel> getCharacters(){
    charactersRepository.getCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });

    return characters;
  }

}