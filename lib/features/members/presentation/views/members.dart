import 'package:flutter/material.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/features/members/presentation/widgets/drop_downs.dart';

import '../../../../core/widgets/my_app_bar.dart';
import '../widgets/all_members.dart';

class Members extends StatelessWidget {
  Members({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyAppBar(),
        verticalSpace(10),
        const DropDowns(),
        verticalSpace(20),
        AllMembers(),
      ],
    );
  }
}
