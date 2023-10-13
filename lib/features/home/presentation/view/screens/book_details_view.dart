import 'package:flutter/material.dart';

import '../widget/custom_book_details_app_bar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              CustomBookDetailsAppBar()
            ],
          ),
        ),
      ),
    );
  }
}

