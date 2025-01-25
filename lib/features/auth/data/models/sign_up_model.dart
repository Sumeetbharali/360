import '../../../../core/models/gym_member_model.dart';

class GymUserModel {
  String gym_name;
  String license_no;
  String owner_name;
  String email;
  String mobile_no;
  String address;
  String city;
  String pin_code;
  String state;
  String country;
  String password;
  String plan;
  List<GymMemberModel> gym_members;

  GymUserModel({
    this.gym_name = "",
    this.license_no = "",
    this.owner_name = "",
    this.email = "",
    this.mobile_no = "",
    this.address = "",
    this.city = "",
    this.pin_code = "",
    this.state = "",
    this.country = "",
    this.password = "",
    this.plan = "",
    this.gym_members = const [],
  });

  factory GymUserModel.fromJson(Map<String, dynamic> json) {
    return GymUserModel(
      gym_name: json["gym_name"],
      license_no: json["license_no"],
      owner_name: json["owner_name"],
      email: json["email"],
      mobile_no: json["mobile_no"],
      address: json["address"],
      city: json["city"],
      pin_code: json["pin_code"],
      state: json["state"],
      country: json["country"],
      password: json["password"],
      plan: json["plan"],
      gym_members: (json["Members"] as List<dynamic>?)
              ?.map((member) => GymMemberModel.fromJson(member))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gym_name': gym_name,
      'license_no': license_no,
      'owner_name': owner_name,
      'email': email,
      'mobile_no': mobile_no,
      'address': address,
      'city': city,
      'pin_code': pin_code,
      'state': state,
      'country': country,
      'password': password,
      'plan': plan,
    };
  }
}
