part of 'CharacterDetailsWidgetsImports.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({Key? key, required this.end}) : super(key: key);
  final double end;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30,
      endIndent: end,
      color: AppColors.primary,
      thickness: 2,
    );
  }
}
