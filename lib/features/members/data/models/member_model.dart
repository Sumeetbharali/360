class MemberModel {
  MemberModel({
    this.name = "Name",
    this.id = "ID",
    this.planExpiry = "DD / MM / YYYY",
    this.dueAmount = "Amount",
      this.training = "Trainer",
      this.plan = "Plan",
    this.batchTime = "00:00 to 00:00",
    this.height = "Height",
    this.weight = "Weight",
    this.chest = "Chest",
    this.waist = "Waist",
    this.information = "More information",
      this.gender = "Gender",
      this.mobileNumber = "Number"});

  String name;
  String mobileNumber;
  String id;
  String planExpiry;
  String dueAmount;
  String training;
  String plan;
  String batchTime;
  String height;
  String weight;
  String chest;
  String waist;
  String gender;
  String information;

  // Convert from Firestore Map to MemberModel
  factory MemberModel.fromJson(Map<String, dynamic> json) {
    return MemberModel(
      name: json['name'] ?? "Name",
      id: json['id'] ?? "ID",
      planExpiry: json['planExpiry'] ?? "DD / MM / YYYY",
      dueAmount: json['dueAmount'] ?? "Amount",
        training: json['isTrainer'] ?? "Trainer",
        plan: json['plan'] ?? "Plan",
      batchTime: json['batchTime'] ?? "00:00 to 00:00",
      height: json['height'] ?? "Height",
      weight: json['weight'] ?? "Weight",
      chest: json['chest'] ?? "Chest",
      waist: json['waist'] ?? "Waist",
        mobileNumber: json['mobileNumber'] ?? "No Number",
        information: json['information'] ?? "More information",
        gender: json['gender'] ?? "Gender");
  }

  // Convert MemberModel to Firestore Map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'planExpiry': planExpiry,
      'dueAmount': dueAmount,
      'training': training,
      'plan': plan,
      'batchTime': batchTime,
      'height': height,
      'weight': weight,
      'chest': chest,
      'waist': waist,
      'information': information,
      'gender': gender,
      'mobileNumber': mobileNumber
    };
  }
}
