// import 'package:breaking/blocs/characters_cubit/characters_cubit.dart';
// import 'package:breaking/blocs/quotes_cubit/quotes_cubit.dart';
// import 'package:breaking/constants/strings.dart';
// import 'package:breaking/models/characters_model/characters_model.dart';
// import 'package:breaking/repositories/characters_repository/characters_repository.dart';
// import 'package:breaking/repositories/quotes_repository/quotes_repository.dart';
// import 'package:breaking/screens/CharacterDetails/CharacterDetailsImports.dart';
// import 'package:breaking/screens/Characters/CharactersImports.dart';
// import 'package:breaking/utilities/dio_helper/dio_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class AppRouter {
//   late CharactersRepository charactersRepository;
//   late CharactersCubit charactersCubit;
//
//   late QuotesRepository quotesRepository;
//   late QuotesCubit quotesCubit;
//
//   AppRouter() {
//     charactersRepository = CharactersRepository(DioHelper());
//     charactersCubit = CharactersCubit(charactersRepository);
//
//     quotesRepository = QuotesRepository(DioHelper());
//     quotesCubit = QuotesCubit(quotesRepository);
//   }
//
//   Route? generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case charactersScreen:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (context) => charactersCubit,
//             child:  const CharactersScreen(),
//           ),
//         );
//
//       case characterDetailsScreen:
//         final character = settings.arguments as CharactersModel;
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (context) => quotesCubit,
//             child: CharacterDetails(character: character,),
//           ),
//         );
//     }
//   }
// }
