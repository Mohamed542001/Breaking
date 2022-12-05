part of 'CharactersWidgetsImports.dart';

class BuildNoInternet extends StatelessWidget {
  const BuildNoInternet ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Can\'t connect .... check internet',
            style: TextStyle(
              fontSize: 22,
              color: AppColors.grey,
            ),
          ),
          Image.asset('assets/images/no-wifi.png'),
        ],
      ),
    );
  }
}
