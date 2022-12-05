part of 'CharactersWidgetsImports.dart';

class BuildCharactersItem extends StatelessWidget {
  const BuildCharactersItem({Key? key, required this.charactersModel}) : super(key: key);

  final CharactersModel charactersModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: (){
          context.router.push(CharacterDetails(character: charactersModel));
          // Navigator.pushNamed(context, characterDetailsScreen ,arguments: charactersModel);
        },
        child: GridTile(
          footer: Hero(
            tag: charactersModel.charId!,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text(
                '${charactersModel.name}',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          child: CachedNetworkImage(
            imageUrl: '${charactersModel.image}',
            height: double.infinity,
            width: double.infinity,
            placeholder: (context, url) => Image.asset('assets/images/loading.gif'),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          ),
        ),

    );
  }
}
