class GymMemberModel {
  String name;
  String mobile_number;
  String gender;
  String height;
  String weight;
  String chest;
  String waist;
  String age;
  String address;
  String training;
  String batch_time;
  String date_from;
  String date_to;
  String paid_amount;
  String due_amount;
  String payment_method;

  GymMemberModel({
    this.name = "",
    this.mobile_number = "",
    this.gender = "",
    this.height = "",
    this.weight = "",
    this.chest = "",
    this.waist = "",
    this.age = "",
    this.address = "",
    this.training = "",
    this.batch_time = "",
    this.date_from = "",
    this.date_to = "",
    this.paid_amount = "",
    this.due_amount = "",
    this.payment_method = "",
  });

  // Convert Firestore document to GymMemberModel
  factory GymMemberModel.fromJson(Map<String, dynamic> json) {
    return GymMemberModel(
      name: json['name'] ?? "",
      mobile_number: json['mobile_number'] ?? "",
      gender: json['gender'] ?? "",
      height: json['height'] ?? "",
      weight: json['weight'] ?? "",
      chest: json['chest'] ?? "",
      waist: json['waist'] ?? "",
      age: json['age'] ?? "",
      address: json['address'] ?? "",
      training: json['training'] ?? "",
      batch_time: json['batch_time'] ?? "",
      date_from: json['date_from'] ?? "",
      date_to: json['date_to'] ?? "",
      paid_amount: json['paid_amount'] ?? "",
      due_amount: json['due_amount'] ?? "",
      payment_method: json['payment_method'] ?? "",
    );
  }

  // Convert GymMemberModel to Json document
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'mobile_number': mobile_number,
      'gender': gender,
      'height': height,
      'weight': weight,
      'chest': chest,
      'waist': waist,
      'age': age,
      'address': address,
      'training': training,
      'batch_time': batch_time,
      'date_from': date_from,
      'date_to': date_to,
      'paid_amount': paid_amount,
      'due_amount': due_amount,
      'payment_method': payment_method,
    };
  }
}
