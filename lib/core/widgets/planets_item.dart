import 'package:flutter/material.dart';
import 'package:space_explorer/core/constants/assets.dart';
import 'package:space_explorer/core/widgets/custom_scaffold.dart';

class planetsItem extends StatelessWidget {
  const planetsItem({super.key, required this.imag});
  final String imag;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Image.asset(
            imag,
            width: 165,
            height: 176,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
