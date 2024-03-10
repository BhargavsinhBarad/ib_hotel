import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

import '../../../utils/const/color.dart';

class resetpass extends StatelessWidget {
  const resetpass({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.33,
                  ),
                  Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 30,
                      color: blackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Now you change your password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.025,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assest/Image/password.png"),
                      hintText: "Enter password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.025,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assest/Image/password.png"),
                      hintText: "Enter password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/login");
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
                          "Reset Password",
                          style: TextStyle(
                            color: ontextcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
