import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/newest_books_cubit/newest_books_cubit.dart';
import '../../controller/newest_books_cubit/newest_books_state.dart';
import 'belst_seller_list_view.dart';



class BestSellerListBuilder extends StatelessWidget {
  const BestSellerListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<NewestBookCubit,NewestBookState>(builder: (context, state) {
      if(state is NewestBookError){
        return Center(child: Text(state.message),);
      }
      else if(state is NewestBookSuccess){
        return  BestSellerListView(books: state.books,);
      }
      return const Center(child:CircularProgressIndicator());
    },);
  }
}
