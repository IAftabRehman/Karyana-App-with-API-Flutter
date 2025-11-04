import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';

class ReceiptBillScreen extends StatefulWidget {
  const ReceiptBillScreen({super.key});

  @override
  State<ReceiptBillScreen> createState() => _ReceiptBillScreenState();
}

class _ReceiptBillScreenState extends State<ReceiptBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeTypeColor,
    );
  }
}
