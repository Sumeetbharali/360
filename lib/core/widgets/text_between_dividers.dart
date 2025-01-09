import 'package:flutter/material.dart';

import '../theme/color_palette.dart';
import '../theme/text_styles.dart';

class TextBetweenDividers extends StatelessWidget {
  TextBetweenDividers({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            height: 2,
            color: ColorPalette.mainGreen,
          ),
        )),
        Text(
          text,
          style: MyTextStyles.fontInter15MainGreenMedium,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            height: 2,
            color: ColorPalette.mainGreen,
          ),
        ))
      ],
    );
  }
}
