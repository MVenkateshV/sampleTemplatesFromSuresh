import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidevelopment/login_in_screen.dart';
import 'package:uidevelopment/profile_screen.dart';
import 'package:uidevelopment/widgets/button_widget.dart';
import 'package:uidevelopment/widgets/input_textform_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController mobilenumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? nameValidator(String? value) {
      if (value!.isEmpty) {
        return 'Enter a valid name!';
      }
      return null;
    }

    String? emailValidator(String? value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
        return 'Enter a valid email!';
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Get Started"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextInputField(
                  controller: nameController,
                  validator: (String? validator) {},
                  hintText: 'Name',
                  lableText: 'Name',
                  textName: 'Name',
                ),
                TextInputField(
                  controller: mobilenumberController,
                  validator: (String? validator) {},
                  hintText: 'mobileNumber',
                  lableText: 'mobileNumber',
                  textName: 'mobileNumber',
                ),
                TextInputField(
                  controller: emailController,
                  validator: (String? validator) {},
                  hintText: 'Email Address',
                  lableText: 'Email Address',
                  textName: 'Email Address',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Batch File'),
                    InputDecorator(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: "Gender",
                          isDense: true,
                          isExpanded: true,
                          items: const [
                            DropdownMenuItem(
                                child: Text("Select "), value: "Gender"),
                            DropdownMenuItem(
                                child: Text("Male"), value: "Male"),
                            DropdownMenuItem(
                                child: Text("Female"), value: "Female"),
                          ],
                          onChanged: (newValue) {
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                TextInputField(
                  controller: passwordController,
                  validator: (String? validator) {},
                  hintText: 'Password',
                  lableText: 'Password',
                  textName: 'Password',
                ),
                ButtonWidget(
                    text: 'Create account ',
                    onPressed: () {
                      Get.to(LoginScreen());
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account? "),
                    GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.blue),
                        )),
                    GestureDetector(
                      onTap: (){
                        Get.to(const ProfileScreen());
                      },
                        child: Icon(Icons.person))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
