part of 'CharactersImports.dart';

class CharactersData{
  List<CharactersModel> allCharacters = [];
  List<CharactersModel> searchedCharacters = [];

  bool isSearching = false ;

  TextEditingController searchController = TextEditingController();

  final GenericBloc<List<CharactersModel>> charactersBloc = GenericBloc([]);
  DioHelper dioHelper = DioHelper();

  void fetchCharacters(BuildContext context,{bool refresh = true}) async {
    var data = await CharactersRepository(dioHelper, context).getCharacters();
    charactersBloc.onUpdateData(data);
  }

}