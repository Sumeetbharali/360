class MemberModel {
  MemberModel({
    this.name = "Name",
    this.id = "ID",
    this.planExpiry = "DD / MM / YYYY",
    this.dueAmount = "Amount",
    this.isTrainer = true,
    this.plan = "Plan",
    this.batchTime = "00:00 to 00:00",
    this.height = "Height",
    this.weight = "Weight",
    this.chest = "Chest",
    this.waist = "Waist",
    this.information = "More information",
  });

  String name;
  String id;
  String planExpiry;
  String dueAmount;
  bool isTrainer;
  String plan;
  String batchTime;
  String height;
  String weight;
  String chest;
  String waist;
  String information;

  // Convert from Firestore Map to MemberModel
  factory MemberModel.fromJson(Map<String, dynamic> json) {
    return MemberModel(
      name: json['name'] ?? "Name",
      id: json['id'] ?? "ID",
      planExpiry: json['planExpiry'] ?? "DD / MM / YYYY",
      dueAmount: json['dueAmount'] ?? "Amount",
      isTrainer: json['isTrainer'] ?? true,
      plan: json['plan'] ?? "Plan",
      batchTime: json['batchTime'] ?? "00:00 to 00:00",
      height: json['height'] ?? "Height",
      weight: json['weight'] ?? "Weight",
      chest: json['chest'] ?? "Chest",
      waist: json['waist'] ?? "Waist",
      information: json['information'] ?? "More information",
    );
  }

  // Convert MemberModel to Firestore Map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'planExpiry': planExpiry,
      'dueAmount': dueAmount,
      'isTrainer': isTrainer,
      'plan': plan,
      'batchTime': batchTime,
      'height': height,
      'weight': weight,
      'chest': chest,
      'waist': waist,
      'information': information,
    };
  }
}
