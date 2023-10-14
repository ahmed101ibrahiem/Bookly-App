import 'package:bookly_app/core/utils/styls.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:flutter/material.dart';

import '../widget/book_action_button.dart';
import '../widget/book_details_list_section.dart';
import '../widget/book_details_section.dart';
import '../widget/custom_book_details_app_bar.dart';
import '../widget/details_book_list_view.dart';
import '../widget/new_book_widget.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    BookDetailsSection(),
                    Expanded(child: SizedBox( height: 24.0,)),
                    BookDetailListSection()

                  ],
                ),
              ),
            )

          ],

        ),
      )
    );
  }
}
