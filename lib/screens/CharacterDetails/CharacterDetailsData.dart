part of 'CharacterDetailsImports.dart';

class CharacterDetailsData{

  final GenericBloc<List<QuotesModel>> quotesBloc = GenericBloc([]);
  DioHelper dioHelper = DioHelper();
  late String charName;

  void fetchCharacters(BuildContext context,{bool refresh = true}) async {
    var data = await CharactersRepository(dioHelper, context).getCharacterQuotes(charName);
    quotesBloc.onUpdateData(data);
  }
}