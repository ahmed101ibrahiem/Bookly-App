import 'package:flutter/material.dart';


class CustomNewBookLoadingIndicator extends StatelessWidget {
  const CustomNewBookLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
          aspectRatio: 2.6/4,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                color: Colors.grey[50],
              ))
      ),
    );
  }
}
