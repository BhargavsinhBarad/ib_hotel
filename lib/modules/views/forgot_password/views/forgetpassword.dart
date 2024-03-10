import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

import '../../../utils/const/color.dart';

class forgotpass extends StatelessWidget {
  const forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StackContainer,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.32,
                    ),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 30,
                        color: blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Please Enter your registered email and we will send you password reset instruction to this email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: Get.height * 0.012,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your email or mobile",
                        prefixIcon: Image.asset("assest/Image/email.png"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.012,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Didn't recevie an email ?   "),
                        Text(
                          "Resend",
                          style: TextStyle(color: onbuttoncolor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.017,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/otp");
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
                            "Send otp",
                            style: TextStyle(
                              color: ontextcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.017,
                    ),
                    Container(
                      height: Get.height * 0.06,
                      width: Get.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all()),
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
