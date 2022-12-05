// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../models/characters_model/characters_model.dart' as _i5;
import '../screens/CharacterDetails/CharacterDetailsImports.dart' as _i2;
import '../screens/Characters/CharactersImports.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CharactersScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.CharactersScreen(),
      );
    },
    CharacterDetails.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CharacterDetails(
          key: args.key,
          character: args.character,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          CharactersScreen.name,
          path: '/',
        ),
        _i3.RouteConfig(
          CharacterDetails.name,
          path: '/character-details',
        ),
      ];
}

/// generated route for
/// [_i1.CharactersScreen]
class CharactersScreen extends _i3.PageRouteInfo<void> {
  const CharactersScreen()
      : super(
          CharactersScreen.name,
          path: '/',
        );

  static const String name = 'CharactersScreen';
}

/// generated route for
/// [_i2.CharacterDetails]
class CharacterDetails extends _i3.PageRouteInfo<CharacterDetailsArgs> {
  CharacterDetails({
    _i4.Key? key,
    required _i5.CharactersModel character,
  }) : super(
          CharacterDetails.name,
          path: '/character-details',
          args: CharacterDetailsArgs(
            key: key,
            character: character,
          ),
        );

  static const String name = 'CharacterDetails';
}

class CharacterDetailsArgs {
  const CharacterDetailsArgs({
    this.key,
    required this.character,
  });

  final _i4.Key? key;

  final _i5.CharactersModel character;

  @override
  String toString() {
    return 'CharacterDetailsArgs{key: $key, character: $character}';
  }
}
