import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_explorer/core/constants/assets.dart';
import 'package:space_explorer/core/constants/theme.dart';
import 'package:space_explorer/core/widgets/custom_button.dart';
import 'package:space_explorer/core/widgets/custom_scaffold.dart';
import 'package:space_explorer/core/widgets/home_body.dart';
import 'package:space_explorer/feature/screens/planets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
        img: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => planetsScreen(),
                ),
              );
            },
            child: Image.asset(Assets.menuIcon)),
        body: const HomeBody(),
      ),
    );
  }
}
