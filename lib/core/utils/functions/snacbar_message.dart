import 'package:flutter/material.dart';

void snackBaeMessage({required BuildContext context,required String message}) {
  ScaffoldMessenger.of(context).showSnackBar( SnackBar(
    backgroundColor: Colors.grey.shade500,
    content: Text(message,style: const TextStyle(
      color: Colors.white,
    ),),
    duration: const Duration(seconds: 2),
  ));
}