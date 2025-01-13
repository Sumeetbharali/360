

class MemberModel {
  // MemberModel(this.id ="id", this.name =" name");
  String name;

  MemberModel(
      {this.name = "Name ",
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
      this.information = "More information "});

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
}
