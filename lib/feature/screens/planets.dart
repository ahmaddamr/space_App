import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_explorer/core/constants/assets.dart';
import 'package:space_explorer/core/constants/image_list.dart';
import 'package:space_explorer/core/widgets/custom_scaffold.dart';
import 'package:space_explorer/core/widgets/planets_item.dart';
import 'package:space_explorer/feature/screens/details.dart';

class planetsScreen extends StatelessWidget {
  const planetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      img: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(Assets.xIcon)),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 4),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    imag: images[index],
                  ),
                ),
              );
            },
            child: planetsItem(
              imag: images[index],
            ),
          );
        },
      ),
    );
  }
}
