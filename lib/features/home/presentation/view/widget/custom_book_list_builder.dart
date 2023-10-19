import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/featured_book_cubit/featured_book_cubit.dart';
import '../../controller/featured_book_cubit/featured_book_state.dart';
import 'custom_book_list.dart';


class CustomBookListBuilder extends StatelessWidget {
  const CustomBookListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit,FeaturedBookState>(builder: (context, state) {
      if(state is FeaturedBookSuccess){
        return  CustomBookList(books: state.books,);
      }
      else if(state is FeaturedBookError){
        return Text(state.message);
      }
      return const CircularProgressIndicator();
    },);
  }
}

