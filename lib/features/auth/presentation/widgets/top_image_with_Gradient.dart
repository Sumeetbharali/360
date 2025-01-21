import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'top_image.dart';

class TopImageWithGradient extends StatelessWidget {
  TopImageWithGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const TopImage(),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              gradient: LinearGradient(colors: [
                Colors.redAccent.withOpacity(0.1),
                Colors.red.withOpacity(0.1)
              ], begin: Alignment.bottomCenter, end: Alignment.center)),
          height: 300.h,
        )
      ],
    );
  }
}
