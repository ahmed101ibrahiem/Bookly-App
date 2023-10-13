import 'package:flutter/material.dart';

import '../widget/custom_book_details_app_bar.dart';
import '../widget/new_book_widget.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:width*0.10),
                child: const CustomNewBookWidget(),
              )
            ],
          ),
        ),
      )
    );
  }
}

