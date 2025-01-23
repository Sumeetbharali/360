class PlanModel {
  final List<String> benefits;
  final num price;
  final String planName;

  PlanModel({
    required this.benefits,
    required this.price,
    required this.planName,
  });

  // Factory constructor to create an instance from Firestore document data
  factory PlanModel.fromFirestore(Map<String, dynamic> data) {
    return PlanModel(
      benefits: List<String>.from(data['benefits'] ?? []),
      price: data['price'] ?? 0,
      planName: data['planName'] ?? '',
    );
  }

  // Method to convert the object into a Map for saving back to Firestore
  Map<String, dynamic> toFirestore() {
    return {
      'benefits': benefits,
      'price': price,
      'planName': planName,
    };
  }
}
