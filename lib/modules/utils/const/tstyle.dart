import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/color.dart';

TextStyle getstart = TextStyle(
  fontSize: 30,
  color: blackcolor,
  fontWeight: FontWeight.bold,
);

TextStyle datastyle = const TextStyle(fontSize: 11, color: Colors.black);

TextStyle style = const TextStyle(fontWeight: FontWeight.bold, fontSize: 25);

TextStyle headerstyle =
    const TextStyle(fontSize: 13, fontWeight: FontWeight.bold);

TextStyle selectstyle = const TextStyle(color: Colors.blue);

TextStyle dstyle = const TextStyle(color: Colors.grey);

TextStyle bold20 = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle bold18 = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

Container StackContainer = Container(
  height: Get.height,
  width: Get.width,
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assest/Image/getstart.png"),
      fit: BoxFit.cover,
    ),
  ),
);

// sizebox
SizedBox width15 = SizedBox(
  width: Get.width * 0.15,
);
SizedBox width02 = SizedBox(
  width: Get.width * 0.02,
);

SizedBox height04 = SizedBox(
  height: Get.height * 0.00,
);

SizedBox size01 = SizedBox(
  height: Get.height * 0.01,
);
SizedBox height03 = SizedBox(
  height: Get.height * 0.03,
);
