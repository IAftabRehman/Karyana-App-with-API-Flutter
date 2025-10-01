import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Configuration/AppRoutes.dart';
import 'package:internship_second_task/Presentation/Elements/CustomButton.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';
import 'package:internship_second_task/Presentation/Elements/CustomTextField.dart';

import '../CommonWidgets/CommonButton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Create Account",
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
              size: 25,
            ),
            MyText(
              text:
              "Please providing following details to create an account",
              color: AppColors.greyTypeColor,
              size: 14,
            ),
            const SizedBox(height: 15),
            MyTextField(controller: emailController, labelText: "Full Name"),
            const SizedBox(height: 15),
            MyTextField(controller: passwordController, labelText: "Phone Number"),
            const SizedBox(height: 15),
            MyTextField(controller: passwordController, labelText: "Shop Name"),
            const SizedBox(height: 15),
            MyTextField(controller: passwordController, labelText: "Email"),
            const SizedBox(height: 15),
            MyTextField(controller: passwordController, labelText: "Shop Address"),
            const SizedBox(height: 15),
            MyTextField(controller: passwordController, labelText: "Password"),

            const Spacer(),

            MyButton(
              onPressed: () {},
              btnLabel: "Create Account",
              color: AppColors.backgroundColor,
              height: 55,
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 10),
            CommonTextButton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
              firstText: "Already have an account?",
              secondText: "Login",
            ),

            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
