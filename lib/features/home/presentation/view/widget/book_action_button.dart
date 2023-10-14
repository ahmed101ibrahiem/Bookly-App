import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';



class BookActionButton extends StatelessWidget {
  const BookActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99 &',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              backgroundColor: Colors.orange,
              textColor: Colors.white,
              fontSize: 16.0,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),),
        ],
      ),
    );
  }
}
