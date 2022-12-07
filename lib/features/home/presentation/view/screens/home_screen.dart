
import 'package:flutter/material.dart';

import '../widget/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HomeScreenBody(),
    );
  }
}
