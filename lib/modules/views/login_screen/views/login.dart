import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/color.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

class login extends StatelessWidget {
  const login({super.key});

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
                      height: Get.height * 0.3,
                    ),
                    Text(
                      "Get Started",
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
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton(
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(color: greycolor),
                          ),
                          onPressed: () {
                            Get.toNamed(
                              "/forgot",
                            );
                          },
                        )),
                    SizedBox(
                      height: Get.height * 0.025,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/Dashboard");
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
                            "Login",
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
                          "Don't have an Account ?",
                          style: TextStyle(color: greycolor),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed("/signup");
                          },
                          child: Text("Sign Up"),
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
                          foregroundImage:
                              AssetImage("assest/Image/google.jpg"),
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
            ),
          )
        ],
      ),
    );
  }
}
