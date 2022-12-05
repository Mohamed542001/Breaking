part of 'CharactersWidgetsImports.dart';

class BuildCharactersAppBar extends StatefulWidget {
  const BuildCharactersAppBar({Key? key, required this.charactersData}) : super(key: key);
  final CharactersData charactersData;

  @override
  State<BuildCharactersAppBar> createState() => _BuildCharactersAppBarState();
}

class _BuildCharactersAppBarState extends State<BuildCharactersAppBar> {
  @override
  Widget build(BuildContext context) {
    return widget.charactersData.isSearching
        ?AppBar(
      backgroundColor: AppColors.primary,
      leading: IconButton(
        onPressed: (){
          setState(() {
            widget.charactersData.isSearching = !widget.charactersData.isSearching;
          });
        },
        icon: Icon(
          Icons.keyboard_backspace,
          color: AppColors.grey,
        ),
      ),
      title: TextField(
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
          widget.charactersData.searchedCharacters = widget.charactersData.allCharacters
              .where((character) =>
              character.name!.toLowerCase().startsWith(searchedCharacter))
              .toList();
          setState(() {

          });
        },
      ),
      actions: [
        IconButton(
          onPressed: (){
            setState(() {
              widget.charactersData.isSearching = !widget.charactersData.isSearching;
            });
          },
          icon: Icon(
            Icons.clear,
            color: AppColors.grey,
          ),
        ),
      ],
    )
        :AppBar(
      backgroundColor: AppColors.primary,
      title: Text(
        'Characters',
        style: TextStyle(
          color: AppColors.grey,
        ),
      ),
      actions: [
        IconButton(
          onPressed: (){
            setState(() {
              widget.charactersData.isSearching = !widget.charactersData.isSearching;
            });
          },
          icon: Icon(
            Icons.search,
            color: AppColors.grey,
          ),
        )
      ],
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
