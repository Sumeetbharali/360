import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/color_palette.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../../../core/widgets/space.dart';

class AddMemberBody extends StatefulWidget {
  const AddMemberBody({super.key});

  @override
  State<AddMemberBody> createState() => _AddMemberBodyState();
}

List<String> gender = ["Male", "Female"];
List<String> training = ["Trainer", "Personal"];

class _AddMemberBodyState extends State<AddMemberBody> {
  String currentGender = gender[0];
  String currentTraining = training[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Name -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 250.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Upload Photo -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 20.w),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 27.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_upload_outlined,
                        color: ColorPalette.mainGreen,
                      ),
                      Text(
                        "Upload",
                        style: MyTextStyles.fontInter11MainGreenRegular,
                      ),
                    ],
                  ),
                ))
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Mobile No. -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 225.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          children: [
            ImageIcon(
              AssetImage("assets/icons/membersIcon.png"),
              color: Colors.white,
              size: 20.sp,
            ),
            horizontalSpace(10),
            Text("-:"),
            Radio(
                fillColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.white; // Color when selected
                  }
                  return Colors.white; // Default color
                }),
                visualDensity: VisualDensity.compact,
                activeColor: Colors.white,
                value: gender[0],
                groupValue: currentGender,
                onChanged: (value) {
                  setState(() {
                    currentGender = value.toString();
                  });
                }),
            Text(
              "Male",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(50),
            Radio(
                fillColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.white; // Color when selected
                  }
                  return Colors.white; // Default color
                }),
                visualDensity: VisualDensity.compact,
                activeColor: Colors.white,
                value: gender[1],
                groupValue: currentGender,
                onChanged: (value) {
                  setState(() {
                    currentGender = value.toString();
                  });
                }),
            Text(
              "Female",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Member No. -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 212.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Measurements -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Height :",
                      style: MyTextStyles.fontInter11MainGreenRegular,
                    ),
                    horizontalSpace(10),
                    SizedBox(
                      height: 10.h,
                      width: 20.w,
                      child: TextFormField(
                        style: MyTextStyles.fontInter11MainGreenRegular
                            .copyWith(color: Colors.white),
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              // Default bottom border color
                              width: 0.5, // Default bottom border thickness
                            ),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpace(10),
                    Text(
                      "Weight :",
                      style: MyTextStyles.fontInter11MainGreenRegular,
                    ),
                    horizontalSpace(10),
                    SizedBox(
                      height: 10.h,
                      width: 20.w,
                      child: TextFormField(
                        style: MyTextStyles.fontInter11MainGreenRegular
                            .copyWith(color: Colors.white),
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              // Default bottom border color
                              width: 0.5, // Default bottom border thickness
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Text(
                      "Chest :",
                      style: MyTextStyles.fontInter11MainGreenRegular,
                    ),
                    horizontalSpace(10),
                    SizedBox(
                      height: 10.h,
                      width: 20.w,
                      child: TextFormField(
                        style: MyTextStyles.fontInter11MainGreenRegular
                            .copyWith(color: Colors.white),
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              // Default bottom border color
                              width: 0.5, // Default bottom border thickness
                            ),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpace(10),
                    Text(
                      "Waist :",
                      style: MyTextStyles.fontInter11MainGreenRegular,
                    ),
                    horizontalSpace(10),
                    SizedBox(
                      height: 10.h,
                      width: 20.w,
                      child: TextFormField(
                        style: MyTextStyles.fontInter11MainGreenRegular
                            .copyWith(color: Colors.white),
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              // Default bottom border color
                              width: 0.5, // Default bottom border thickness
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        verticalSpace(1),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Date of Birth -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 209.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Address. -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 242.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          children: [
            Text(
              "Training -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
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
                groupValue: currentTraining,
                onChanged: (value) {
                  setState(() {
                    currentTraining = value.toString();
                  });
                }),
            Text(
              "Trainer",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(30),
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
                groupValue: currentTraining,
                onChanged: (value) {
                  setState(() {
                    currentTraining = value.toString();
                  });
                }),
            Text(
              "Personal",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Plan -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              height: 25.h,
              width: 284.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 1.sp)),
              ),
              child: DropdownButton(
                isExpanded: true,
                padding: EdgeInsets.zero,
                dropdownColor: Colors.black,
                style: MyTextStyles.fontInter20WhiteLight,
                underline: SizedBox(),
                items: const [
                  DropdownMenuItem(value: "Plan", child: Text("Plan"))
                ],
                onChanged: (x) {},
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Batch Time -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              height: 25.h,
              width: 222.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 1.sp)),
              ),
              child: DropdownButton(
                isExpanded: true,
                padding: EdgeInsets.zero,
                dropdownColor: Colors.black,
                style: MyTextStyles.fontInter20WhiteLight,
                underline: SizedBox(),
                items: const [
                  DropdownMenuItem(
                      value: "Batch Time", child: Text("Batch Time"))
                ],
                onChanged: (x) {},
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Joining Date -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 80.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            ),
            horizontalSpace(10),
            Text(
              "To",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 80.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Paid Amount -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 207.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Due Amount -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 209.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        verticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Payment Method -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            horizontalSpace(10),
            SizedBox(
              height: 15.h,
              width: 169.w,
              child: TextFormField(
                style: MyTextStyles.fontInter15MainGreenMedium
                    .copyWith(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Default bottom border color
                      width: 0.5, // Default bottom border thickness
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
