class OrderModel {
  final String id;
  final int items;
  final String address;
  final int amount;
  final String expectedDeliveryDate;
  final String status;

  OrderModel({
    required this.id,
    required this.items,
    required this.address,
    required this.amount,
    required this.expectedDeliveryDate,
    required this.status,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    id: json["id"] ?? "",
    items: json["items"] ?? 0,
    address: json["address"] ?? "",
    amount: json["amount"] ?? 0,
    expectedDeliveryDate: json["expectedDelivery"] ?? "",
    status: json["status"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "items": items,
    "address": address,
    "amount": amount,
    "expectedDelivery": expectedDeliveryDate,
    "status": status,
  };
}
