import 'package:bookly_app/core/media_quary/media_quary_value.dart';
import 'package:bookly_app/features/home/presentation/controller/featured_book_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import 'new_book_widget.dart';


class CustomBookList extends StatefulWidget {
  const CustomBookList({super.key,required this.books});
  final List<BookEntity> books;

  @override
  State<CustomBookList> createState() => _CustomBookListState();
}

class _CustomBookListState extends State<CustomBookList> {
  late ScrollController scrollController;
  var nextPage = 1;
  bool isLoading = false;
  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
    super.initState();
  }
  void _scrollListener() async{
    var currentPosition = scrollController.position.pixels;
    // all length of listener
    var maxScrollLength =  scrollController.position.maxScrollExtent;
    if(currentPosition >= 0.7* maxScrollLength) {
      if(!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBookCubit>(context).getFeaturedData(
            pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height *0.3,
      child: ListView.builder(
        controller: scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  CustomNewBookWidget(urlImage:widget.books[index].image!),),
    );
  }
}
