part of 'CharacterDetailsWidgetsImports.dart';

class BuildCharacterInfoView extends StatefulWidget {
  const BuildCharacterInfoView({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildCharacterInfoView> createState() => _BuildCharacterInfoViewState();
}

class _BuildCharacterInfoViewState extends State<BuildCharacterInfoView> {
  CharacterDetailsData characterDetailsData = CharacterDetailsData();
  late CharactersModel character;
  @override
  void initState() {
    characterDetailsData.fetchCharacters(context);
    super.initState();
    // BlocProvider.of<CharactersCubit>(context).getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<QuotesCubit>(context).getCharacterQuotes('${character.name}');
    return Container(
      margin: const EdgeInsets.only(left: 14, right: 14, top: 14),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildCharacterInfo(
            title: 'jop : ',
            value: character.occupation!.join(' / '),
          ),
          const BuildDivider(end: 320),
          BuildCharacterInfo(
            title: 'Appeared in : ',
            value: character.category!,
          ),
          const BuildDivider(end: 250),
          BuildCharacterInfo(
            title: 'Seasons : ',
            value: character.appearance!.join(' / '),
          ),
          const BuildDivider(end: 280),
          BuildCharacterInfo(
            title: 'Status : ',
            value: character.status!,
          ),
          const BuildDivider(end: 300),
          character.betterCallSaulAppearance!.isEmpty
              ? Container()
              : BuildCharacterInfo(
                  title: 'Better Call Saul Seasons : ',
                  value: character.betterCallSaulAppearance!.join(' / '),
                ),
          character.betterCallSaulAppearance!.isEmpty
              ? Container()
              : const BuildDivider(end: 150),
          BuildCharacterInfo(
            title: 'Actor/Actress : ',
            value: character.name!,
          ),
          const BuildDivider(end: 235),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<GenericBloc<List<QuotesModel>>,
              GenericState<List<QuotesModel>>>(
            builder: (context, state) {
              if (state is GenericUpdateState) {
                var quotes = (state).data;
                if (quotes.isNotEmpty) {
                  int randomQuoteIndex = Random().nextInt(quotes.length - 1);
                  return Center(
                    child: DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 7,
                            color: AppColors.primary,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          FlickerAnimatedText(quotes[randomQuoteIndex].quote)
                        ],
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
