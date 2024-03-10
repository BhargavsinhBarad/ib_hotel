import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

import '../../../utils/const/color.dart';

class otp extends StatelessWidget {
  const otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StackContainer,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.3,
                  ),
                  Text(
                    "OTP Verification",
                    style: TextStyle(
                      fontSize: 30,
                      color: blackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "otp has been sent Email id please enter otp.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  OtpTextField(
                    numberOfFields: 6,
                    showFieldAsBox: true,
                    showCursor: false,
                    onCodeChanged: (String code) {},
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/reset");
                    },
                    child: Container(
                      height: Get.height * 0.06,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: onbuttoncolor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "Verify",
                          style: TextStyle(
                            color: ontextcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Didn't recevie an email ?   "),
                      Text(
                        "Resend",
                        style: TextStyle(color: onbuttoncolor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
