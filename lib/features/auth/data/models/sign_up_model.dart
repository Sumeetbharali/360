class SignUpModel {
  String gym_name,
      license_no,
      owner_name,
      email,
      mobile_no,
      address,
      city,
      pin_code,
      state,
      country,
      password,
      confirm_password;

  SignUpModel(
      {required this.gym_name,
      required this.license_no,
      required this.owner_name,
      required this.email,
      required this.mobile_no,
      required this.address,
      required this.city,
      required this.pin_code,
      required this.state,
      required this.country,
      required this.password,
      required this.confirm_password});

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
        gym_name: json["gym_name"],
        license_no: json["license_no"],
        owner_name: json["owner_name"],
        email: json["email"],
        mobile_no: json["mobileNo"],
        address: json["address"],
        city: json["city"],
        pin_code: json["pin_code"],
        state: json["state"],
        country: json["country"],
        password: json["password"],
        confirm_password: json["confirm_password"]);
  }
}
