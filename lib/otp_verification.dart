import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidevelopment/pinput_example.dart';
import 'package:uidevelopment/widgets/button_widget.dart';

import 'cources_screen.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text("OTP Verification"),
            Text(
                "Enter your ashdfuasyiruyaiudhf ajsfhgkjsdhfyeiur jashgfkdjdshgfkjd jasadsgfjdsjfg"),
            SizedBox(
              height: 30,
            ),
            PinputExample(),
            ButtonWidget(
                text: 'Confirm ',
                onPressed: () {
                  Get.to(CoursersScreen());
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't receive code? "),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Resend Code",
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
