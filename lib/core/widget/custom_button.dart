import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,
  required this.backgroundColor,
  required this.textColor,
     this.borderRadius,
     required this.text,
     this.fontSize
  }) : super(key: key);

  BorderRadius? borderRadius;
  final String text;
  final Color backgroundColor;
  double? fontSize;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius?? BorderRadius.circular(16.0),
          )
        ),
          onPressed: (){},
          child: Text(text,style: Styles.textStyle18.copyWith(
            color: textColor,
            fontSize: fontSize
          ),)),
    );
  }
}
