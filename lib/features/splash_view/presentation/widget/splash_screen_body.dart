import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:bookly_app/features/splash_view/presentation/widget/slider_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/constants.dart';
import '../../../home/presentation/view/screens/home_screen.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  void navigateToScreen() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(() => HomeScreen(),
            transition: Transition.fade, duration: kTranstionDuration);
      },
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToScreen();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logoPath),
        const SizedBox(
          height: 12,
        ),
        SliderText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
