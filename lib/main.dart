import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/views/Signup_screen/views/signup.dart';
import 'package:ib_hotel/modules/views/add_customer_screen/views/add_cutomer.dart';
import 'package:ib_hotel/modules/views/add_room_screen/views/add_room.dart';
import 'package:ib_hotel/modules/views/add_vendor_screen/views/add_vendor.dart';
import 'package:ib_hotel/modules/views/customer_details_screen/views/customer_detail.dart';
import 'package:ib_hotel/modules/views/customer_screen/views/customer.dart';
import 'package:ib_hotel/modules/views/dashboard/views/dashboard.dart';
import 'package:ib_hotel/modules/views/login_screen/views/login.dart';
import 'package:ib_hotel/modules/views/notification/views/notification.dart';
import 'package:ib_hotel/modules/views/onboarding_screen/views/onboarding.dart';
import 'package:ib_hotel/modules/views/profile_screen/views/profile.dart';
import 'package:ib_hotel/modules/views/report_screen/views/report.dart';
import 'package:ib_hotel/modules/views/reset_password/views/reset.dart';
import 'package:ib_hotel/modules/views/room_screen/views/room.dart';
import 'package:ib_hotel/modules/views/splash_screen/views/splash_screen.dart';
import 'package:ib_hotel/modules/views/staff_details/views/staff_detail.dart';
import 'package:ib_hotel/modules/views/staff_screen/views/staff.dart';
import 'package:ib_hotel/modules/views/vender_details_screen/views/vender_details.dart';
import 'package:ib_hotel/modules/views/vender_screen/views/vendor.dart';

import 'modules/views/ otp_verification/views/otp.dart';
import 'modules/views/add_new_staff/views/add_staff.dart';
import 'modules/views/forgot_password/views/forgetpassword.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/",
          page: () => const splash(),
        ),
        GetPage(
          name: "/onboarding",
          page: () => const onboarding(),
        ),
        GetPage(
          name: "/login",
          page: () => const login(),
        ),
        GetPage(
          name: "/signup",
          page: () => const signup(),
        ),
        GetPage(
          name: "/forgot",
          page: () => const forgotpass(),
        ),
        GetPage(
          name: "/otp",
          page: () => const otp(),
        ),
        GetPage(
          name: "/reset",
          page: () => const resetpass(),
        ),
        GetPage(
          name: "/Dashboard",
          page: () => dashboard(),
        ),
        GetPage(
          name: "/customer",
          page: () => customer(),
        ),
        GetPage(
          name: "/staff",
          page: () => staff(),
        ),
        GetPage(
          name: "/vendor",
          page: () => vendor(),
        ),
        GetPage(
          name: "/report",
          page: () => report(),
        ),
        GetPage(
          name: "/room",
          page: () => room(),
        ),
        GetPage(
          name: "/notification",
          page: () => const notification(),
        ),
        GetPage(
          name: "/profile",
          page: () => const profile(),
        ),
        GetPage(
          name: "/addcustomer",
          page: () => add_customer(),
        ),
        GetPage(
          name: "/customer_detail",
          page: () => customer_detail(),
        ),
        GetPage(
          name: "/staff_detail",
          page: () => staff_detail(),
        ),
        GetPage(
          name: "/add_staff",
          page: () => add_staff(),
        ),
        GetPage(
          name: "/vendor_detail",
          page: () => vendor_detail(),
        ),
        GetPage(
          name: "/add_new_vendor",
          page: () => add_vendor(),
        ),
        GetPage(
          name: "/add_room",
          page: () => add_room(),
        ),
      ],
    ),
  );
}
