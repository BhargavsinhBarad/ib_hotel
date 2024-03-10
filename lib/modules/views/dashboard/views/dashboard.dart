import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

import '../../../utils/const/color.dart';

class dashboard extends StatelessWidget {
  dashboard({super.key});
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.05,
            ),
            Image.asset("assest/Image/logonavbar.png"),
            SizedBox(
              height: Get.height * 0.06,
            ),
            Row(
              children: [
                width15,
                Image.asset("assest/Image/dashbord icon.png"),
                width02,
                TextButton(
                  onPressed: () {
                    Get.toNamed("/Dashboard");
                  },
                  child: Text(
                    "Dashboard",
                    style: selectstyle,
                  ),
                ),
              ],
            ),
            height04,
            Row(
              children: [
                width15,
                Image.asset("assest/Image/cusotmer.png"),
                width02,
                TextButton(
                  onPressed: () {
                    Get.toNamed("/customer");
                  },
                  child: Text(
                    "Cusotmer",
                    style: dstyle,
                  ),
                ),
              ],
            ),
            height04,
            Row(
              children: [
                width15,
                Image.asset("assest/Image/staff icon.png"),
                width02,
                TextButton(
                  onPressed: () {
                    Get.toNamed("/staff");
                  },
                  child: Text(
                    "Staff",
                    style: dstyle,
                  ),
                ),
              ],
            ),
            height04,
            Row(
              children: [
                width15,
                Image.asset("assest/Image/vendor icon.png"),
                width02,
                TextButton(
                    onPressed: () {
                      Get.toNamed("/vendor");
                    },
                    child: Text(
                      "Vendor",
                      style: dstyle,
                    )),
              ],
            ),
            height04,
            Row(
              children: [
                width15,
                Image.asset("assest/Image/record icon.png"),
                width02,
                TextButton(
                    onPressed: () {
                      Get.toNamed("/report");
                    },
                    child: Text(
                      "Report",
                      style: dstyle,
                    )),
              ],
            ),
            height04,
            Row(
              children: [
                width15,
                Image.asset("assest/Image/room icon.png"),
                width02,
                TextButton(
                  onPressed: () {
                    Get.toNamed("/room");
                  },
                  child: Text(
                    "Rooms",
                    style: dstyle,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                width15,
                TextButton(
                    onPressed: () {
                      Get.toNamed("/login");
                    },
                    child: Text(
                      "logout",
                      style: dstyle,
                    )),
              ],
            )
          ],
        ),
      ),
      body: Stack(children: [
        StackContainer,
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          scaffoldkey.currentState!.openDrawer();
                        },
                        child: Image.asset("assest/Image/menu icon.png")),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed("/notification");
                        },
                        child:
                            Image.asset("assest/Image/notification icon.png")),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed("/profile");
                        },
                        child: Image.asset("assest/Image/profile icon.png")),
                  ],
                ),
                Text(
                  "Welcome Back Admin,",
                  style: TextStyle(
                    fontSize: 25,
                    color: blackcolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Your daily dashboard report hear",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  height: Get.height * 0.2,
                  width: Get.width,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Average Profit"),
                          const Spacer(),
                          Container(
                            height: Get.height * 0.03,
                            width: Get.width * 0.22,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Last Week",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "₹98,550.80",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                            height: Get.height * 0.07,
                            width: Get.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: greencolor,
                              image: const DecorationImage(
                                image: AssetImage("assest/Image/Group 17.png"),
                              ),
                            ),
                          ),
                          width02,
                          Column(
                            children: [
                              Text(
                                "₹198,550.80",
                                style: headerstyle,
                              ),
                              SizedBox(
                                height: Get.height * 0.016,
                              ),
                              const Text(
                                "Average Income",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: Get.height * 0.07,
                            width: Get.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: redcolor,
                              image: const DecorationImage(
                                image: AssetImage("assest/Image/Group 18.png"),
                              ),
                            ),
                          ),
                          width02,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "₹100,000.00",
                                style: headerstyle,
                              ),
                              SizedBox(
                                height: Get.height * 0.016,
                              ),
                              const Text(
                                "Average Expenes",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                size01,
                Row(
                  children: [
                    Text(
                      "Overview",
                      style: bold20,
                    ),
                    const Spacer(),
                    Container(
                      height: Get.height * 0.03,
                      width: Get.width * 0.22,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        children: [
                          Spacer(),
                          Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                size01,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: boxcolor,
                              border: Border.all(color: blackcolor)),
                          child: Center(
                            child: Text("11", style: style),
                          ),
                        ),
                        Text(
                          "Arrival",
                          style: bold18,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: boxcolor,
                              border: Border.all(color: blackcolor)),
                          child: Center(
                            child: Text(
                              "04",
                              style: style,
                            ),
                          ),
                        ),
                        Text(
                          "Departure",
                          style: bold18,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: boxcolor,
                              border: Border.all(color: blackcolor)),
                          child: Center(
                            child: Text(
                              "03",
                              style: style,
                            ),
                          ),
                        ),
                        Text(
                          "Booking",
                          style: bold18,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: boxcolor,
                              border: Border.all(color: blackcolor)),
                          child: Center(
                            child: Text(
                              "42",
                              style: style,
                            ),
                          ),
                        ),
                        Text(
                          "In-house",
                          style: bold18,
                        ),
                      ],
                    ),
                  ],
                ),
                height03,
                Row(
                  children: [
                    Text(
                      "Room Occupancy",
                      style: bold20,
                    ),
                    const Spacer(),
                    Container(
                      height: Get.height * 0.03,
                      width: Get.width * 0.22,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        children: [
                          Spacer(),
                          Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                size01,
                Container(
                  height: Get.height * 0.4,
                  width: Get.width,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Ready for Booking",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Container(
                            height: Get.height * 0.025,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                            child: Container(
                              height: Get.height * 0.025,
                              width: Get.width * 0.01,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            "10",
                            style: bold20,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Occupide",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Container(
                            height: Get.height * 0.025,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                            child: Container(
                              height: Get.height * 0.025,
                              width: Get.width * 0.01,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            "42",
                            style: bold20,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Aggregated",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Container(
                            height: Get.height * 0.025,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                            child: Container(
                              height: Get.height * 0.025,
                              width: Get.width * 0.01,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            "08",
                            style: bold20,
                          )
                        ],
                      ),
                      size01,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Container(
                              height: Get.height * 0.1,
                              width: Get.width * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Lack Side",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Free Room :2",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: Get.height * 0.1,
                            width: Get.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lack Side",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Free Room :2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: Get.height * 0.1,
                            width: Get.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lack Side",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Free Room :2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: Get.height * 0.1,
                            width: Get.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lack Side",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Free Room :2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: Get.height * 0.1,
                            width: Get.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lack Side",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Free Room :2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: Get.height * 0.1,
                            width: Get.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lack Side",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Free Room :2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                size01,
                Row(
                  children: [
                    Text(
                      "Booking Statistic",
                      style: bold20,
                    ),
                    const Spacer(),
                    Container(
                      height: Get.height * 0.03,
                      width: Get.width * 0.27,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        children: [
                          Spacer(),
                          Text(
                            "Last 6 Month",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                height03,
                Container(
                  height: Get.height * 0.2,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assest/Image/chart.png")),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
