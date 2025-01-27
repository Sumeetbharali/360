import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/members/data/models/member_model.dart';
import 'package:gym_management/features/members/presentation/manager/members_cubit.dart';

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
TextEditingController nameController = TextEditingController();
TextEditingController mobileController = TextEditingController();
TextEditingController memberNumberController = TextEditingController();
TextEditingController heightController = TextEditingController();
TextEditingController weightController = TextEditingController();
TextEditingController chestController = TextEditingController();
TextEditingController waistController = TextEditingController();
TextEditingController dateOfBirthController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController planController = TextEditingController();
TextEditingController batchTimeController = TextEditingController();
TextEditingController dateFromController = TextEditingController();
TextEditingController dateToController = TextEditingController();
TextEditingController paidController = TextEditingController();
TextEditingController dueController = TextEditingController();
TextEditingController paymentController = TextEditingController();

MemberModel createMember(
    String name,
    String mobile,
    String gender,
    String memberNumber,
    String height,
    String weight,
    String waist,
    String chest,
    String dateOfBirth,
    String address,
    String training,
    String plan,
    String batchTime,
    String dateFrom,
    String dateTo,
    String paid,
    String due,
    String payment) {
  return MemberModel(
    name: name,
    gender: gender,
    height: height,
    batchTime: batchTime,
    chest: chest,
    dueAmount: due,
    mobileNumber: mobile,
    plan: plan,
    planExpiry: dateTo,
    waist: waist,
    weight: weight,
    training: training,
  );
}

class _AddMemberBodyState extends State<AddMemberBody> {
  String currentGender = gender[0];
  String currentTraining = training[0];

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<MembersCubit>();
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: IntrinsicHeight(
            child: Column(
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
                        controller: nameController,
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
                verticalSpace(15),
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
                        controller: mobileController,
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
                verticalSpace(15),
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
                verticalSpace(15),
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
                        controller: memberNumberController,
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
                verticalSpace(15),
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
                                controller: heightController,
                                style: MyTextStyles.fontInter11MainGreenRegular
                                    .copyWith(color: Colors.white),
                                decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      // Default bottom border color
                                      width:
                                          0.5, // Default bottom border thickness
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
                                controller: weightController,
                                style: MyTextStyles.fontInter11MainGreenRegular
                                    .copyWith(color: Colors.white),
                                decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      // Default bottom border color
                                      width:
                                          0.5, // Default bottom border thickness
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        verticalSpace(15),
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
                                controller: chestController,
                                style: MyTextStyles.fontInter11MainGreenRegular
                                    .copyWith(color: Colors.white),
                                decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      // Default bottom border color
                                      width:
                                          0.5, // Default bottom border thickness
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
                                controller: waistController,
                                style: MyTextStyles.fontInter11MainGreenRegular
                                    .copyWith(color: Colors.white),
                                decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      // Default bottom border color
                                      width:
                                          0.5, // Default bottom border thickness
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
                        controller: dateOfBirthController,
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
                verticalSpace(15),
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
                        controller: addressController,
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
                verticalSpace(15),
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
                verticalSpace(15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Plan -:",
                      style: MyTextStyles.fontInter20MainGreenSemiBold,
                    ),
                    horizontalSpace(10),
                    SizedBox(
                      height: 15.h,
                      width: 290.w,
                      child: TextFormField(
                        controller: planController,
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
                verticalSpace(15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Batch Time -:",
                      style: MyTextStyles.fontInter20MainGreenSemiBold,
                    ),
                    horizontalSpace(10),
                    SizedBox(
                      height: 15.h,
                      width: 234.w,
                      child: TextFormField(
                        controller: batchTimeController,
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
                verticalSpace(15),
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
                        controller: dateFromController,
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
                        controller: dateToController,
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
                verticalSpace(15),
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
                        controller: paidController,
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
                verticalSpace(15),
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
                        controller: dueController,
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
                verticalSpace(15),
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
                        controller: paymentController,
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
                verticalSpace(30),
                GestureDetector(
                    onTap: () {
                      MemberModel newMember = createMember(
                          nameController.text,
                          mobileController.text,
                          currentGender,
                          memberNumberController.text,
                          heightController.text,
                          weightController.text,
                          waistController.text,
                          chestController.text,
                          dateOfBirthController.text,
                          addressController.text,
                          currentTraining,
                          planController.text,
                          batchTimeController.text,
                          dateFromController.text,
                          dateToController.text,
                          paidController.text,
                          dueController.text,
                          paymentController.text);
                      cubit.member = newMember;
                      cubit.addMember();
                      cubit.getMembers();
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      height: 27.h,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white, // White shadow
                              blurRadius: 2, // Blur intensity
                              spreadRadius: 0.1, // Spread of the shadow
                              offset:
                                  Offset(-0.75, 3), // Shadow position (x, y)
                            ),
                          ],
                          border: Border.all(color: ColorPalette.mainGreen),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Save",
                        style: MyTextStyles.fontInter18MainGreenMedium,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
