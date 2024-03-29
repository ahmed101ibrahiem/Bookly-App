import 'package:flutter/material.dart';

import '../../features/home/presentation/view/screens/book_details_view.dart';
import '../../features/home/presentation/view/screens/home_screen.dart';
import '../../features/search/presentation/views/search_views.dart';
import '../../features/splash_view/presentation/screens/splash_screen.dart';


abstract class Routes{
   static String homeScreen = '/homeScreen';
   static String bookDetailsView = '/bookDetailsView';
   static String searchView = '/searchView';
  static var routes =  {
  '/':(BuildContext context)=>SplashScreen(),
  homeScreen:(BuildContext context)=>HomeScreen(),
    bookDetailsView:(BuildContext context)=>BookDetailsView(),
    searchView:(BuildContext context)=>SearchView(),
  };
}