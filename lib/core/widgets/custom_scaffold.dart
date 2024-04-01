import 'package:flutter/material.dart';
import 'package:space_explorer/core/constants/theme.dart';
import 'package:space_explorer/core/widgets/custom_text.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final Widget img;
  const CustomScaffold({super.key, required this.img, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Apptheme.purple1,
        title: CustomText(
          text: 'Explorer',
          styl: Apptheme.nunitoFont24.copyWith(color: Apptheme.yellow),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: img,
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Apptheme.purple1, Apptheme.purple2, Apptheme.purple3],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: body,
      ),
    );
  }
}
