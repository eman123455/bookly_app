import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errmsg});
  final String errmsg;
  @override
  Widget build(BuildContext context) {
    return Text(errmsg,style: Styles.textStyle20.copyWith(color: Colors.red),);
  }
}
