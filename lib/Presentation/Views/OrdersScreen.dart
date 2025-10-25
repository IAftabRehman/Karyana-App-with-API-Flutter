import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Models/OrderModel.dart';
import 'package:internship_second_task/Presentation/Elements/CustomContainer.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<OrderModel> orderModel = [
    OrderModel(
      id: "ID#KR21241",
      items: 1,
      address: "SD-21, North Nazimabad, Karachi",
      amount: 1200,
      expectedDeliveryDate: "Monday, 14 April",
      status: "Pending",
    ),
    OrderModel(
      id: "ID#KR21242",
      items: 25,
      address: "Gulshan-e-Iqbal, Karachi",
      amount: 2000,
      expectedDeliveryDate: "Tuesday, 15 April",
      status: "Completed",
    ),
    OrderModel(
      id: "ID#KR21242",
      items: 25,
      address: "Gulshan-e-Iqbal, Karachi",
      amount: 2000,
      expectedDeliveryDate: "Tuesday, 15 April",
      status: "Cancelled",
    ),
    OrderModel(
      id: "ID#KR21242",
      items: 25,
      address: "Gulshan-e-Iqbal, Karachi",
      amount: 2000,
      expectedDeliveryDate: "Tuesday, 15 April",
      status: "Processing",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteRelatedColor,
      appBar: AppBar(
        leading: const SizedBox(),
        title: MyText(text: "Orders", size: 24, fontWeight: FontWeight.bold),
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: AppColors.whiteRelatedColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: MyContainer(
                  padding: const EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.secondaryBackgroundColor,
                  child: TabBar(
                    labelStyle: TextStyle(fontSize: 12),
                    controller: _tabController,
                    indicator: BoxDecoration(
                      color: AppColors.whiteRelatedColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: AppColors.backgroundColor,
                    dividerColor: Colors.transparent,
                    tabs: const [
                      Tab(text: "Pending"),
                      Tab(text: "Completed"),
                      Tab(text: "Cancelled"),
                      Tab(text: "Processed"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildOrderList("Pending"),
          buildOrderList("Completed"),
          buildOrderList("Cancelled"),
          buildOrderList("Processing"),
        ],
      ),
    );
  }

  Widget buildOrderList(String status) {
    final filteredOrders = orderModel
        .where((order) => order.status == status)
        .toList();

    if (filteredOrders.isEmpty) {
      return Center(
        child: MyText(
          text: "No $status Orders",
          size: 16,
          color: AppColors.greyTypeColor,
        ),
      );
    }

    return ListView.builder(
      itemCount: filteredOrders.length,
      itemBuilder: (context, index) {
        final order = filteredOrders[index];
        return Padding(
          padding: const EdgeInsets.all(10),
          child: MyContainer(
            color: AppColors.secondaryBackgroundColor,
            borderRadius: BorderRadius.circular(10),
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: order.id,
                      size: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 5),
                    MyText(
                      text: order.items > 1
                          ? "${order.items} Items"
                          : "${order.items} Item",
                      size: 15,
                      color: AppColors.greyTypeColor,
                    ),
                    MyText(
                      text: order.address,
                      size: 14,
                      color: AppColors.greyTypeColor,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: "Amount",
                              size: 13,
                              color: AppColors.greyTypeColor,
                            ),
                            MyText(
                              text: "${order.amount} Rs",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.backgroundColor,
                            ),
                          ],
                        ),
                        MyContainer(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          width: 1,
                          height: 40,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: "Expected Delivery",
                              size: 13,
                              color: AppColors.greyTypeColor,
                            ),
                            MyText(
                              text: order.expectedDeliveryDate,
                              size: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                MyContainer(
                  color: order.status == "Pending"
                      ? Colors.orange.withOpacity(0.2)
                      : order.status == "Completed"
                      ? Colors.green.withOpacity(0.2)
                      : Colors.red.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                  padding: const EdgeInsets.all(8),
                  child: MyText(
                    text: order.status,
                    color: order.status == "Pending"
                        ? Colors.orange
                        : order.status == "Completed"
                        ? Colors.green
                        : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.whiteRelatedColor,
//       appBar: AppBar(
//         leading: const SizedBox(),
//         title: MyText(text: "Orders", size: 24, fontWeight: FontWeight.bold),
//         centerTitle: true,
//         elevation: 0.5,
//         backgroundColor: AppColors.whiteRelatedColor,
//         bottom: TabBar(
//           controller: _tabController,
//           indicatorColor: AppColors.backgroundColor,
//           labelColor: AppColors.backgroundColor,
//           unselectedLabelColor: AppColors.greyTypeColor,
//           labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//           tabs: const [
//             Tab(text: "Pending"),
//             Tab(text: "Delivered"),
//             Tab(text: "Cancelled"),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController, // ✅ Linked controller here
//         children: [
//           buildOrderList("Pending"),
//           buildOrderList("Completed"),
//           buildOrderList("Cancelled"),
//         ],
//       ),
//     );
//   }
//
