import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:space_explorer/core/constants/theme.dart';

class readMoreText extends StatelessWidget {
  const readMoreText({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ReadMoreText(
        txt,
        trimMode: TrimMode.Line,
        trimLines: 8,
        colorClickableText: Colors.pink,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle: Apptheme.nunitoFont15.copyWith(color: Apptheme.purple1),
        lessStyle: Apptheme.nunitoFont15.copyWith(color: Apptheme.purple1),
        style: Apptheme.nunitoFont15.copyWith(color: Apptheme.white),
      ),
    );
  }
}
