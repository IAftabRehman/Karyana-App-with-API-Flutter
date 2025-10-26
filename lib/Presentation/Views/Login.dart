import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Configuration/AppRoutes.dart';
import 'package:internship_second_task/Presentation/Elements/CustomButton.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';
import 'package:internship_second_task/Presentation/Elements/CustomTextField.dart';

import '../CommonWidgets/CommonButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Login",
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
              size: 25,
            ),
            MyText(
              text:
                  "Please enter the email and password associated with your account",
              color: AppColors.greyTypeColor,
            ),
            const SizedBox(height: 10),
            MyTextField(controller: emailController, labelText: "Email"),
            const SizedBox(height: 20),
            MyTextField(controller: passwordController, labelText: "Password"),

            const Spacer(),

            MyButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.bottomBar);
              },
              btnLabel: "Login",
              color: AppColors.backgroundColor,
              height: 55,
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 10),
            CommonTextButton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signUp);
              },
              firstText: "Don't have an account?",
              secondText: "Create Account",
            ),
          ],
        ),
      ),
    );
  }
}
