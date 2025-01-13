import 'package:flutter/material.dart';

class MemberNavBarComponent extends StatelessWidget {
  MemberNavBarComponent(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.label,
      required this.style});

  void Function() onTap;
  Widget icon;
  String label;
  TextStyle style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          icon,
          Text(
            label,
            style: style,
          ),
        ],
      ),
    );
  }
}
