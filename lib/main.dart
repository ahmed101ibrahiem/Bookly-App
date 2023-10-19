import 'package:bookly_app/core/utils/functions/setup_service_locater.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/usecase/fetch_featured_books_usecase.dart';
import 'package:bookly_app/features/home/domain/usecase/fetch_newest_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/controller/featured_book_cubit/featured_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/controller/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/utils/app_routes.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/constants.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBooks);
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => FeaturedBookCubit(
          featuredBooksUseCase: FetchFeaturedBooksUseCase(
            homeRepo: getIt.get<HomeReposImpl>()
          ))..getFeaturedData(),),
      BlocProvider(create: (context) => NewestBookCubit(
          fetchNewestBooksUseCase: FetchNewestBooksUseCase(
               getIt.get<HomeReposImpl>()
          ))..getNewestData(),),
    ],
        child: MaterialApp(


      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      routes: Routes.routes,
      initialRoute: '/',
    ));
  }
}
