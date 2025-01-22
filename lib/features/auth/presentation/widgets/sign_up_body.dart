import 'package:flutter/material.dart';
import 'package:gym_management/features/auth/data/models/sign_up_model.dart';
import 'package:gym_management/features/auth/presentation/widgets/signup_field.dart';

import '../../../../core/widgets/space.dart';

class SignUpBody extends StatelessWidget {
  SignUpBody({super.key, required this.getData});

  late GymUserModel user = GymUserModel();
  final Function(GymUserModel) getData;

  onFieldChanged(String value, String text) {
    switch (text) {
      case "Gym Name":
        user.gym_name = value;
        break;
      case "Gym License No.":
        user.license_no = value;
        break;
      case "Email":
        user.email = value;
        break;
      case "Owner Name":
        user.owner_name = value;
        break;
      case "Mobile No.":
        user.mobile_no = value;
        break;
      case "Address":
        user.address = value;
        break;
      case "Pin Code":
        user.pin_code = value;
        break;
      case "City":
        user.city = value;
        break;
      case "State":
        user.state = value;
        break;
      case "Country":
        user.country = value;
        break;
      case "Password":
        user.password = value;
        break;
    }
    getData(user);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignupField(
          text: "Gym Name",
          width: 203,
          onChanged: onFieldChanged,
        ),
        verticalSpace(20),
        SignupField(
            text: "Gym License No.", width: 149, onChanged: onFieldChanged),
        verticalSpace(20),
        SignupField(text: "Owner Name", width: 185, onChanged: onFieldChanged),
        verticalSpace(20),
        SignupField(text: "Email", width: 253, onChanged: onFieldChanged),
        verticalSpace(20),
        SignupField(text: "Mobile No.", width: 204, onChanged: onFieldChanged),
        verticalSpace(20),
        SignupField(text: "Address", width: 228, onChanged: onFieldChanged),
        verticalSpace(20),
        Row(
          children: [
            SignupField(text: "City", width: 70, onChanged: onFieldChanged),
            horizontalSpace(10),
            SignupField(text: "Pin Code", width: 70, onChanged: onFieldChanged),
          ],
        ),
        verticalSpace(20),
        Row(
          children: [
            SignupField(text: "State", width: 70, onChanged: onFieldChanged),
            horizontalSpace(10),
            SignupField(text: "Country", width: 70, onChanged: onFieldChanged),
          ],
        ),
        verticalSpace(20),
        SignupField(text: "Password", width: 213, onChanged: onFieldChanged),
        verticalSpace(20),
        SignupField(
            text: "Confirm Password", width: 134, onChanged: onFieldChanged),
        verticalSpace(20),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Text(
        //       "Upload Gym Logo -:",
        //       style: MyTextStyles.fontInter20MainGreenSemiBold,
        //     ),
        //     GestureDetector(
        //         onTap: () {},
        //         child: Container(
        //           margin: EdgeInsets.only(left: 5.w),
        //           padding: EdgeInsets.symmetric(horizontal: 20.w),
        //           height: 30.h,
        //           width: 145.w,
        //           decoration: BoxDecoration(
        //               color: Colors.black,
        //               border: Border.all(color: Colors.white),
        //               borderRadius: BorderRadius.circular(10)),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Icon(
        //                 Icons.file_upload_outlined,
        //                 color: ColorPalette.mainGreen,
        //               ),
        //               Text(
        //                 "Upload",
        //                 style: MyTextStyles.fontInter11MainGreenRegular,
        //               ),
        //             ],
        //           ),
        //         ))
        //   ],
        // ),
      ],
    );
  }
}
