import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:breaking/blocs/characters_cubit/characters_cubit.dart';
import 'package:breaking/blocs/quotes_cubit/quotes_cubit.dart';
import 'package:breaking/constants/AppColors.dart';
import 'package:breaking/models/characters_model/characters_model.dart';
import 'package:breaking/models/quotes_model/quotes_model.dart';
import 'package:breaking/repositories/quotes_repository/quotes_repository.dart';
import 'package:breaking/screens/CharacterDetails/CharacterDetailsImports.dart';
import 'package:breaking/screens/widgets/BuildCharacterInfo.dart';
import 'package:breaking/utils/utils/generic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'CharacterDetailsAppBar.dart';
part 'BuildCharacterInfo.dart';
part 'BuildDivider.dart';