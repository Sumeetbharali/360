import 'package:flutter/material.dart';

import 'my_drop_down.dart';

class DropDowns extends StatelessWidget {
  const DropDowns({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MyDropDown(
          items: const [
            DropdownMenuItem(value: "All Members", child: Text("All Members"))
          ],
          initialValue: 'All Members',
        ),
        MyDropDown(
          items: const [
            DropdownMenuItem(value: "All Plans", child: Text("All Plans"))
          ],
          initialValue: 'All Plans',
        ),
        MyDropDown(
          items: const [
            DropdownMenuItem(value: "Select Batch", child: Text("Select Batch"))
          ],
          initialValue: 'Select Batch',
        ),
      ],
    );
  }
}
