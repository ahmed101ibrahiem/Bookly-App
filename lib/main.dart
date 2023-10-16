import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'core/utils/app_routes.dart';
import 'core/utils/constants.dart';

void main() async {
  runApp(const MyApp());

  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      routes: Routes.routes,
      initialRoute: '/',
    );
  }
}
