import 'package:breaking/blocs/characters_cubit/characters_cubit.dart';
import 'package:breaking/constants/AppColors.dart';
import 'package:breaking/models/characters_model/characters_model.dart';
import 'package:breaking/repositories/characters_repository/characters_repository.dart';
import 'package:breaking/screens/Characters/widgets/CharactersWidgetsImports.dart';
import 'package:breaking/utilities/dio_helper/dio_helper.dart';
import 'package:breaking/utils/utils/generic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';

part 'CharactersScreen.dart';
part 'CharactersData.dart';