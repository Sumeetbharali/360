import 'package:flutter/material.dart';
import 'package:gym_management/features/auth/data/models/sign_up_model.dart';
import 'package:gym_management/features/auth/presentation/widgets/signup_field.dart';

import '../../../../core/widgets/space.dart';

class SignUpBody extends StatelessWidget {
  SignUpBody({super.key, required this.getData});

  final Function(GymUserModel) getData;

  late GymUserModel user = GymUserModel();

  onFieldChanged(dynamic value, String text) {
    switch (text) {
      case "Gym Name":
        user.gym_name = value;
        break;
      case "Gym License No.":
        user.license_no = value;
        break;
      case "Email":
        user.email = value;
        print("Email: ${user.email}");
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
        print("Password: ${user.password}");
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
          // validator: (value) {
          //   if (value == null || value.isEmpty) {
          //     return 'Required';
          //   }
          //   return null;
          // },
        ),
        verticalSpace(25),
        SignupField(
          // validator: (value) {
          //   if (value == null || value.isEmpty) {
          //     return 'Required';
          //   }
          //   return null;
          // },
          text: "Gym License No.",
          width: 149,
          onChanged: onFieldChanged,
        ),
        verticalSpace(25),
        SignupField(
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Required';
            //   }
            //   return null;
            // },
            text: "Owner Name",
            width: 185,
            onChanged: onFieldChanged),
        verticalSpace(25),
        SignupField(
          text: "Email",
          width: 253,
          onChanged: onFieldChanged,
          textInputType: TextInputType.emailAddress,
          // validator: (value) {
          //   if (value == null || value.isEmpty) {
          //     return 'Required';
          //   }
          //   final regex =
          //       RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
          //   if (!regex.hasMatch(value)) {
          //     return 'Not valid email address';
          //   }
          //   return null; // Validation passed
          // },
        ),
        verticalSpace(25),
        SignupField(
          // validator: (value) {
          //   if (value == null || value.isEmpty) {
          //     return 'Required';
          //   }
          //   return null;
          // },
          text: "Mobile No.",
          width: 204,
          onChanged: onFieldChanged,
          textInputType: TextInputType.number,
        ),
        verticalSpace(25),
        SignupField(
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Required';
            //   }
            //   return null;
            // },
            text: "Address",
            width: 228,
            onChanged: onFieldChanged),
        verticalSpace(25),
        Row(
          children: [
            SignupField(
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Required';
                //   }
                //   return null;
                // },
                text: "City",
                width: 70,
                onChanged: onFieldChanged),
            horizontalSpace(10),
            SignupField(
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Required';
              //   }
              //   return null;
              // },
              text: "Pin Code",
              width: 70,
              onChanged: onFieldChanged,
              textInputType: TextInputType.number,
            ),
          ],
        ),
        verticalSpace(25),
        Row(
          children: [
            SignupField(
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Required';
                //   }
                //   return null;
                // },
                text: "State",
                width: 70,
                onChanged: onFieldChanged),
            horizontalSpace(10),
            SignupField(
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Required';
                //   }
                //   return null;
                // },
                text: "Country",
                width: 70,
                onChanged: onFieldChanged),
          ],
        ),
        verticalSpace(25),
        SignupField(
          text: "Password",
          width: 213,
          onChanged: onFieldChanged,
          isObscure: true,
          // validator: (value) {
          //   if (value == null || value.isEmpty) {
          //     return 'Required';
          //   }
          //   if (value.length < 6) {
          //     return 'Minimum 6 characters';
          //   }
          //   return null; // Validation passed
          // },
        ),
        verticalSpace(25),
      ],
    );
  }
}
