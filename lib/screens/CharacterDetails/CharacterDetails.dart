part of 'CharacterDetailsImports.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key? key, required this.character, }) : super(key: key);
  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: CustomScrollView(
        slivers: [
          CharacterDetailsAppBar(charactersModel: character),
          SliverList(
            delegate: SliverChildListDelegate([
              const BuildCharacterInfoView(),
              const SizedBox(
                height: 500,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
