part of 'CharacterDetailsWidgetsImports.dart';

class CharacterDetailsAppBar extends StatelessWidget {
  const CharacterDetailsAppBar({Key? key, required this.charactersModel}) : super(key: key);
  final CharactersModel charactersModel;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: AppColors.grey,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          '${charactersModel.nickName}',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
        background: Hero(
          tag: charactersModel.charId!,
          child: Image.network('${charactersModel.image}',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
