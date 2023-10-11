import 'package:flutter/material.dart';



class SliderText extends StatelessWidget {
  const SliderText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
          position: slidingAnimation,
          child: const Text('Read New Book',textAlign: TextAlign.center,)),
    );
  }}