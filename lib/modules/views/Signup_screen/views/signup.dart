import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

import '../../../utils/const/color.dart';

class signup extends StatelessWidget {
  const signup({super.key});

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height * 0.3,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      color: blackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Please fill your detail to access your account.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.012,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your user name",
                      prefixIcon: Image.asset("assest/Image/cusotmer.png"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.012,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your email or user name",
                      prefixIcon: Image.asset("assest/Image/email.png"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.012,
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
                    height: Get.height * 0.012,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assest/Image/password hide.png"),
                      hintText: "Enter password confirm password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.012,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("Dashboard");
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
                          "Sign Up",
                          style: TextStyle(
                            color: ontextcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Already have an Account ?",
                        style: TextStyle(color: greycolor),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed("/login");
                        },
                        child: const Text("Log in"),
                      )
                    ],
                  ),
                  const Center(
                    child: Text(
                      "Or",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.025,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        foregroundImage: AssetImage("assest/Image/google.jpg"),
                      ),
                      CircleAvatar(
                        radius: 20,
                        foregroundImage:
                            AssetImage("assest/Image/facebook.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
