import 'package:flutter/material.dart';


SnackBar showSnackBar(String errMessage) {
  return SnackBar(
    content: Text(
      'Error loading more books: $errMessage',
      style: const TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.white,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 2),
  );
}

