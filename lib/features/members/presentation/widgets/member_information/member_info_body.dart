import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/features/members/data/models/member_model.dart';
import 'package:gym_management/features/members/presentation/widgets/member_details_field.dart';

import '../../../../../core/theme/color_palette.dart';

class MemberInfoBody extends StatefulWidget {
  MemberInfoBody({super.key, required this.member});

  MemberModel member;

  @override
  State<MemberInfoBody> createState() => _MemberInfoBodyState();
}

List<String> training = ["Trainer", "Personal"];

class _MemberInfoBodyState extends State<MemberInfoBody> {
  String currentOption = training[0];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      verticalSpace(10),
      MemberDetailsField(
        field: "Name ",
        value: widget.member.name,
        fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
        valueTextStyle: MyTextStyles.fontInter20WhiteLight,
      ),
      verticalSpace(10),
      Row(
        children: [
          ImageIcon(
            const AssetImage("assets/icons/idCardLogo.png"),
            size: 20.sp,
          ),
          horizontalSpace(10),
          MemberDetailsField(
            field: "M ID ",
            value: widget.member.id,
            fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
            valueTextStyle: MyTextStyles.fontInter20WhiteLight,
          ),
        ],
      ),
      verticalSpace(10),
      MemberDetailsField(
        field: "Plan Expiry ",
        value: widget.member.planExpiry,
        fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
        valueTextStyle: MyTextStyles.fontInter20WhiteLight,
      ),
      verticalSpace(10),
      MemberDetailsField(
        field: "Due Amount ",
        value: widget.member.dueAmount,
        fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
        valueTextStyle: MyTextStyles.fontInter20WhiteLight,
      ),
      verticalSpace(10),
      Row(
        children: [
          MemberDetailsField(
            field: "Training -",
            value: "",
            fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
          ),
          Row(
            children: [
              Radio(
                  fillColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.white; // Color when selected
                    }
                    return Colors.white; // Default color
                  }),
                  visualDensity: VisualDensity.compact,
                  activeColor: Colors.white,
                  value: training[0],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  }),
              Text(
                "Trainer",
                style: MyTextStyles.fontInter18MainGreenLight,
              )
            ],
          ),
          Row(
            children: [
              Radio(
                  fillColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.white; // Color when selected
                    }
                    return Colors.white; // Default color
                  }),
                  visualDensity: VisualDensity.compact,
                  activeColor: Colors.white,
                  value: training[1],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  }),
              Text(
                "Personal",
                style: MyTextStyles.fontInter18MainGreenLight,
              )
            ],
          ),

          // Expanded(
          //   child: RadioListTile(
          //       materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //       visualDensity: const VisualDensity(
          //           horizontal: VisualDensity.minimumDensity,
          //           vertical: VisualDensity.minimumDensity),
          //       dense: true,
          //       contentPadding: EdgeInsets.zero,
          //       title: Text(
          //         "Personal",
          //         style: MyTextStyles.fontInter15MainGreenMedium,
          //       ),
          //       value: training[1],
          //       groupValue: currentOption,
          //       onChanged: (value) {
          //         setState(() {
          //           currentOption = value.toString();
          //         });
          //       }),
          // )
        ],
      ),
      verticalSpace(10),
      MemberDetailsField(
        field: "Plan ",
        value: widget.member.plan,
        fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
        valueTextStyle: MyTextStyles.fontInter20WhiteLight,
      ),
      verticalSpace(10),
      MemberDetailsField(
        field: "Batch Time ",
        value: widget.member.batchTime,
        fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
        valueTextStyle: MyTextStyles.fontInter20WhiteLight,
      ),
      verticalSpace(10),

      // TODO
      MemberDetailsField(
        field: "Measurements ",
        value: widget.member.height,
        fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
        valueTextStyle: MyTextStyles.fontInter20WhiteLight,
      ),
      verticalSpace(10),
      MemberDetailsField(
        field: "Information ",
        value: widget.member.information,
        fieldTextStyle: MyTextStyles.fontInter20MainGreenLight,
        valueTextStyle: MyTextStyles.fontInter20WhiteLight,
      ),
      verticalSpace(90),
      GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: 115.w),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 27.h,
            decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white, // White shadow
                    blurRadius: 2, // Blur intensity
                    spreadRadius: 0.1, // Spread of the shadow
                    offset: Offset(-0.75, 3), // Shadow position (x, y)
                  ),
                ],
                border: Border.all(color: ColorPalette.mainGreen),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Save",
              style: MyTextStyles.fontInter18MainGreenMedium,
            ),
          ))
    ]);
  }
}
