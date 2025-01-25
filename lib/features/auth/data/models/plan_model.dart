class PlanModel {
  final List<String> benefits;
  final num price;
  final String plan_name;

  PlanModel({
    required this.benefits,
    required this.price,
    required this.plan_name,
  });

  // Factory constructor to create an instance from Firestore document data
  factory PlanModel.fromFirestore(Map<String, dynamic> data) {
    return PlanModel(
      benefits: List<String>.from(data['benefits'] ?? []),
      price: data['price'] ?? 0,
      plan_name: data['plan_name'] ?? '',
    );
  }

  // Method to convert the object into a Map for saving back to Firestore
  Map<String, dynamic> toFirestore() {
    return {
      'benefits': benefits,
      'price': price,
      'plan_name': plan_name,
    };
  }
}
