import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_explorer/core/constants/assets.dart';
import 'package:space_explorer/core/widgets/custom_scaffold.dart';
import 'package:space_explorer/core/widgets/read_more.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.imag});
  final String imag;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
        img: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(Assets.menuIcon)),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Image.asset(
                imag,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                // height: 303,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            const Expanded(
              child: SingleChildScrollView(
                  child: readMoreText(
                      txt:
                          'Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is... MoreEarth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is... More universe known to harbour life. It is... ')),
            )
          ],
        ),
      ),
    );
  }
}
