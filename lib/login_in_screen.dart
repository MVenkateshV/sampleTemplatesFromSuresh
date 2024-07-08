import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidevelopment/sign_up_screen.dart';
import 'package:uidevelopment/widgets/button_widget.dart';
import 'package:uidevelopment/widgets/input_textform_field.dart';

import 'forget_password.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      //add colors to colors array
                      colors: [
                        Colors.red,
                        Colors.yellow,
                      ],
                    ),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(4.0), // stroke
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://picsum.photos/200'),
                        radius: 50, // resize radius
                      ))),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Welcome back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
                "Welcome back enter your credentials to access ur account",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
              ),
              TextInputField(
                controller: emailController,
                validator: (String? validator) {},
                hintText: 'Email Address',
                lableText: 'Email Address',
                textName: 'Email Address',
              ),
              TextInputField(
                controller: passwordController,
                validator: (String? validator) {},
                hintText: 'Password',
                lableText: 'Password',
                textName: 'Password',
              ),
              GestureDetector(
                onTap: () {
                  Get.to(ForgetPasswordScreen());
                },
                child: const Align(
                    alignment: Alignment.topRight,
                    child: Text("Forget password? ")),
              ),
              ButtonWidget(
                  text: 'Login in ',
                  onPressed: () {
                    Get.back();
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Now Here? "),
                  GestureDetector(
                      onTap: () {
                        Get.to(SignUpScreen());
                      },
                      child: const Text(
                        "Create an account",
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
              Center(
                child: Container(
                  width: Get.width * 0.7,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20, top: 20),
                  child: ElevatedButton(
                    child: Text(
                      'Book A Demo ',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
