import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? styl;
  const CustomText({super.key, required this.text, this.styl});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: styl,
    );
  }
}
