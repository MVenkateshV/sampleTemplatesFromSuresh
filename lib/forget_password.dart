import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidevelopment/otp_verification.dart';
import 'package:uidevelopment/widgets/button_widget.dart';
import 'package:uidevelopment/widgets/input_textform_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_circle_left_sharp))),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Forget Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
                "Enter the email associated with your account and  we will send an authention code to reset your password",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
              ),
              TextInputField(
                controller: emailController,
                validator: (String? validator) {},
                hintText: 'Email Address',
                lableText: 'Email Address',
                textName: 'Email Address',
              ),
              ButtonWidget(
                  text: 'Submit ',
                  onPressed: () {
                    Get.to(OtpVerification());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
