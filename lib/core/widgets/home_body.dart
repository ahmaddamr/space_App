import 'package:flutter/material.dart';
import 'package:space_explorer/core/constants/assets.dart';
import 'package:space_explorer/core/constants/theme.dart';
import 'package:space_explorer/core/widgets/custom_button.dart';
import 'package:space_explorer/feature/screens/planets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let’s Explore the',
                style: Apptheme.nunitoFont40.copyWith(
                  color: Apptheme.white,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Solar System',
                style: Apptheme.nunitoFont40.copyWith(
                  color: Apptheme.yellow,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'with',
                  style: Apptheme.nunitoFont40.copyWith(
                    color: Apptheme.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Explorer',
                    style: Apptheme.nunitoFont40.copyWith(
                      color: Apptheme.yellow,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Image.asset(Assets.splashImage),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => planetsScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(345, 50)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lets Go',
                    style: Apptheme.openSansFont22
                        .copyWith(color: Apptheme.purple1),
                  ),
                  Image.asset(Assets.rocket),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
