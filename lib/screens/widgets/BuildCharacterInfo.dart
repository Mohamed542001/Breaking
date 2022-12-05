import 'package:breaking/constants/AppColors.dart';
import 'package:flutter/material.dart';

class BuildCharacterInfo extends StatelessWidget {
  const BuildCharacterInfo({Key? key, required this.title, required this.value}) : super(key: key);
  final String title;
  final String value;


  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextSpan(
              text: value,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
            ),
          ]
      ),
    );
  }
}
