import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_list_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/functions/snacbar_message.dart';
import '../../controller/featured_book_cubit/featured_book_cubit.dart';
import '../../controller/featured_book_cubit/featured_book_state.dart';
import 'custom_book_list.dart';


class CustomBookListBuilder extends StatefulWidget {
  const CustomBookListBuilder({super.key});

  @override
  State<CustomBookListBuilder> createState() => _CustomBookListBuilderState();
}

class _CustomBookListBuilderState extends State<CustomBookListBuilder> {
  List <BookEntity>books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBookCubit,FeaturedBookState>(
      listener: (context, state) {
        if (state is FeaturedBookSuccess){
          books.addAll(state.books);
        }
        if (state is FeaturedBookPaginationError){
          snackBaeMessage(context: context,message:  state.message);
        }
      },
      builder: (context, state) {
        if(state is FeaturedBookSuccess ||
            state is FeaturedBookPaginationLoading || state is FeaturedBookPaginationError){
          return  CustomBookList(books: books,);
        }
        else if(state is FeaturedBookError){
          return Text(state.message);
        }
        return const CircularProgressIndicator();
      },);
  }


}

