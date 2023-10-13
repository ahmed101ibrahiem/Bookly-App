import 'package:bookly_app/features/home/presentation/view/screens/home_screen.dart';
import 'package:bookly_app/features/splash_view/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'core/utils/app_routes.dart';
import 'core/utils/constants.dart';
import 'features/home/presentation/view/screens/book_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
     // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      routes: Routes.routes,
     initialRoute: Routes.bookDetailsView,
    );
  }
}
