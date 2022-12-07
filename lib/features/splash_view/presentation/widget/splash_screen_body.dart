import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logoPath),
        const SizedBox(height: 12,),
        const Text('Read New Book',textAlign: TextAlign.center,)
      ],
    );
  }
}
