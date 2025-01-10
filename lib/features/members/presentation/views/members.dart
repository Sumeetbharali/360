import 'package:flutter/material.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/features/members/presentation/widgets/drop_downs.dart';

import '../../../../core/widgets/my_app_bar.dart';

class Members extends StatelessWidget {
  Members({super.key});

  List<String> options1 = ["All Members", "Test1", "Test2"];
  List<String> options2 = ["All Plans"];
  List<String> options3 = ["Select Batch"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyAppBar(),
        verticalSpace(10),
        const DropDowns(),
      ],
    );
  }
}
