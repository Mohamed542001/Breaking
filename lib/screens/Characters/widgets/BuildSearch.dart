part of 'CharactersWidgetsImports.dart';

class BuildSearch extends StatefulWidget {
  const BuildSearch({Key? key, required this.charactersData,}) : super(key: key);
  final CharactersData charactersData;

  @override
  State<BuildSearch> createState() => _BuildSearchState();
}

class _BuildSearchState extends State<BuildSearch> {

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.charactersData.searchController,
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
        widget.charactersData.searchedCharacters =widget.charactersData.allCharacters
            .where((character) =>
            character.name!.toLowerCase().startsWith(searchedCharacter))
            .toList();
        setState(() {});
      },
    );
  }
}
