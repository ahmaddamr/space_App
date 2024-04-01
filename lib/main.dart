import 'package:flutter/material.dart';
import 'package:space_explorer/core/widgets/planets_item.dart';
import 'package:space_explorer/feature/screens/home.dart';
import 'package:space_explorer/feature/screens/planets.dart';

void main() {
  runApp(const SpaceExplorer());
}

class SpaceExplorer extends StatelessWidget {
  const SpaceExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      );
    });
  }
}
