part of 'CharactersWidgetsImports.dart';

class BuildLoadedList extends StatelessWidget {
  const BuildLoadedList({Key? key,required this.charactersData}) : super(key: key);
  final CharactersData charactersData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.grey,
        child: Column(
          children: [
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2/3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: charactersData.searchController.text.isEmpty
                    ?charactersData.allCharacters.length
                :charactersData.searchedCharacters.length,
                itemBuilder: (context,i){
                  return BuildCharactersItem(charactersModel: charactersData.searchController.text.isEmpty
                      ?charactersData.allCharacters[i]
                    :charactersData.searchedCharacters[i],);
                }
            ),
          ],
        ),

      ),
    );
  }
}
