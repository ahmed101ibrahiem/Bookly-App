import 'package:bookly_app/core/media_quary/media_quary_value.dart';
import 'package:bookly_app/core/widget/custom_fading_widget.dart';
import 'package:flutter/material.dart';

import 'custom_new_book_loading_indicator.dart';
import 'new_book_widget.dart';

class CustomBookListLoadingIndicator extends StatelessWidget {
  const CustomBookListLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(child:SizedBox(
      height: context.height *0.3,
      child: ListView.builder(
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  const CustomNewBookLoadingIndicator(),),
    ));
  }
}
