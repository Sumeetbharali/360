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

  SignUpModel({ this.gym_name = "",
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
    this.confirm_password = ""});

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
