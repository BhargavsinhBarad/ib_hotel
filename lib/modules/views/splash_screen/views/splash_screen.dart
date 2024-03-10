import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Get.toNamed("/onboarding");
      },
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              "assest/Image/Splashscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assest/Image/logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
