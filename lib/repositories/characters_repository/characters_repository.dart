import 'package:breaking/models/characters_model/characters_model.dart';
import 'package:breaking/models/quotes_model/quotes_model.dart';
import 'package:breaking/utilities/dio_helper/dio_helper.dart';
import 'package:flutter/material.dart';

class CharactersRepository{
  final DioHelper dioHelper;
  late BuildContext context;

  CharactersRepository(this.dioHelper,this.context);

  Future<List<CharactersModel>> getCharacters() async {
    final characters = await dioHelper.getCharacters();
    return characters.map((character)=> CharactersModel.fromJson(character)).toList();
  }

  Future<List<QuotesModel>> getCharacterQuotes(String charName) async {
    final quotes = await dioHelper.getCharacterQuotes(charName);
    return quotes.map((charQuotes)=> QuotesModel.fromJson(charQuotes)).toList();
  }
}