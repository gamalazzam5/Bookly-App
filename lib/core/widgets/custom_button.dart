import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,  this.topLeft=16,  this.bottomLeft=16,  this.topRight=0,  this.bottomRight=0,  this.backgroundColor= Colors.white,  this.textColor= Colors.black, required this.text,  this.fontSize, this.onPressed });
  final double topLeft;
  final double bottomLeft;
  final double topRight;
  final double bottomRight;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double? fontSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(150, 48),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.only(topLeft: Radius.circular(topLeft) ,bottomLeft: Radius.circular(bottomLeft),topRight: Radius.circular(topRight),bottomRight: Radius.circular(bottomRight))
          )
        ),
        onPressed: onPressed,
        child: Text(text,style: TextStyles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.bold,fontSize: fontSize),));
  }
}
