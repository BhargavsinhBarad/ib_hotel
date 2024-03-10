import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/color.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              "assest/Image/onboarding.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: Get.height * 0.05,
              ),
              Center(
                child: Container(
                  height: Get.height * 0.1,
                  width: Get.width * 0.5,
                  child: Image.asset(
                    "assest/Image/logoonbording.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: ontextcolor,
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/login");
                },
                child: Container(
                  height: Get.height * 0.06,
                  width: Get.width * 0.8,
                  decoration: BoxDecoration(
                    color: onbuttoncolor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: ontextcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.025,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/signup");
                },
                child: Container(
                  height: Get.height * 0.06,
                  width: Get.width * 0.8,
                  decoration: BoxDecoration(
                    color: ontextcolor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
