import 'package:breaking/utilities/dio_helper/dio_helper.dart';
import 'package:flutter/material.dart';

class LoginRepository{
  final DioHelper dioHelper;
  late BuildContext context;

  LoginRepository(this.dioHelper,this.context);
}