

import 'package:auto_route/annotations.dart';
import 'package:breaking/screens/CharacterDetails/CharacterDetailsImports.dart';
import 'package:breaking/screens/Characters/CharactersImports.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CharactersScreen, initial: true),
    AutoRoute(page: CharacterDetails),
  ],
)
class $AppRouter {}