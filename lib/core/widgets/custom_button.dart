import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor, this.border_Radius});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? border_Radius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:RoundedRectangleBorder(
              borderRadius:border_Radius?? BorderRadius.circular(12)
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle16
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          )),
    );
  }
}
