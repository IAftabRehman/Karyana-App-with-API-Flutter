import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

import '../../Configuration/AppColors.dart';
import '../Elements/CustomContainer.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({super.key});

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  String? selectedValue;

  final List<String> items = [
    'Parchoon',
    'Completed',
    'Cancelled',
    'Processing',
    'Processing',
    'Processing',
    'Processing',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteRelatedColor,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: MyText(
              text: "Account Settings",
              size: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: MyText(
              text: "Please provide following details below",
              size: 14,
              color: AppColors.greyTypeColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          buildMyContainer("Muhammad Wajahat", null),
          buildMyContainer("+92 3140090925", null),
          buildMyContainer("Karwaan General Store", null),
          buildMyContainer("SD-21, North Nazimabad, Karachi", null),
          MyContainer(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: AppColors.secondaryBackgroundColor,
            borderRadius: BorderRadius.circular(10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedValue,
                hint: MyText(
                  text: "Select Status",
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down),
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
            ),
          ),

          const Spacer(),
          MyContainer(
            color: Colors.transparent,
            border: const Border(
              top: BorderSide(
                width: 2,
                color: AppColors.secondaryBackgroundColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildElevatedButton(
                  "Discard",
                  Colors.black,
                  () => Navigator.pop(context),
                ),
                buildElevatedButton(
                  "Save Changes",
                  AppColors.backgroundColor,
                  () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  MyContainer buildMyContainer(String text, IconData? icon) {
    return MyContainer(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: AppColors.secondaryBackgroundColor,
      borderRadius: BorderRadius.circular(10),
      child: Row(
        children: [
          icon != null ? MyIconContainer(iconData: icon) : SizedBox(),
          MyText(
            text: text,
            size: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  Animate buildElevatedButton(
    String label,
    Color color,
    GestureTapCallback onTap,
  ) {
    return Animate(
      effects: const [
        FadeEffect(duration: Duration(milliseconds: 2000)),
        MoveEffect(curve: Curves.fastLinearToSlowEaseIn),
      ],
      child: Expanded(
        child: MyContainer(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          padding: EdgeInsets.symmetric(vertical: 17),
          color: color,
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: MyText(
              text: label,
              size: 17,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteRelatedColor,
            ),
          ),
        ),
      ),
    );
  }
}
