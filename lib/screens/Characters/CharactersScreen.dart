part of 'CharactersImports.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  CharactersData charactersData = CharactersData();

  @override
  void initState() {
    charactersData.fetchCharacters(context);
    super.initState();
    // BlocProvider.of<CharactersCubit>(context).getCharacters();
  }

  List<Widget> buildAppBarAction() {
    if (charactersData.isSearching) {
      return [
        IconButton(
          onPressed: () {
            clearSearch();
            charactersData.isSearching = false;
          },
          icon: Icon(Icons.clear, color: AppColors.grey),
        ),
      ];
    } else {
      return [
        IconButton(
          onPressed: startSearch,
          icon: Icon(
            Icons.search,
            color: AppColors.grey,
          ),
        ),
      ];
    }
  }

  void startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearch));

    setState(() {
      charactersData.isSearching = true;
    });
  }

  void stopSearch() {
    clearSearch();
  }

  void clearSearch() {
    setState(() {
      charactersData.searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: charactersData.isSearching
            ? TextField(
                controller: charactersData.searchController,
                cursorColor: AppColors.grey,
                decoration: InputDecoration(
                  hintText: 'Find a character...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: AppColors.grey, fontSize: 18),
                ),
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 18,
                ),
                onChanged: (searchedCharacter) {
                  charactersData.searchedCharacters = charactersData
                      .allCharacters
                      .where((character) => character.name!
                          .toLowerCase()
                          .startsWith(searchedCharacter))
                      .toList();
                  setState(() {});
                },
              )
            : Text(
                'Characters',
                style: TextStyle(
                  color: AppColors.grey,
                ),
              ),
        leading: charactersData.isSearching
            ? BackButton(
                color: AppColors.grey,
                onPressed: () {
                  setState(() {
                    charactersData.isSearching = false;
                  });
                })
            : Container(),
        actions: buildAppBarAction(),
      ),
      body: OfflineBuilder(
        connectivityBuilder: ((
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;
          if(connected){
            return BlocBuilder<GenericBloc<List<CharactersModel>>,GenericState<List<CharactersModel>>>(
              bloc: charactersData.charactersBloc,
              builder: (context,state){
                if(state is GenericUpdateState){
                  charactersData.allCharacters = (state).data;

                  print('Data is ${charactersData.allCharacters[1]}');
                  return BuildLoadedList(charactersData: charactersData,);
                } else{
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                    ),
                  );
                }
              },
            );
          }else{
            return const BuildNoInternet();
          }
        }),
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.primary,
          ),
        ),
      ),

    );
  }
}
