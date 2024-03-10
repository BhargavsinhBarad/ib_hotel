import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';
import 'component/container.dart';

class room extends StatelessWidget {
  room({super.key});
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
                    style: dstyle,
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
                    style: selectstyle,
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
      body: Stack(
        children: [
          StackContainer,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
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
                        child: Image.asset("assest/Image/menu icon.png"),
                      ),
                      SizedBox(
                        width: Get.width * 0.3,
                      ),
                      const Text(
                        "Room",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed("/notification");
                          },
                          child: Image.asset(
                              "assest/Image/notification icon.png")),
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
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: Get.height * 0.055,
                          width: Get.width * 0.2,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintText: "serch heare..",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.025,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/add_room");
                        },
                        child: Container(
                          height: Get.height * 0.03,
                          width: Get.width * 0.22,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "Add Room",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.025,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    width: Get.width,
                    height: Get.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ContainedTabBarView(
                      tabs: const [
                        Text('All'),
                        Text('Ready for\nBooking'),
                        Text('Occupied'),
                        Text('Aggregated'),
                      ],
                      views: [
                        allcon,
                        readycon,
                        occupidecon,
                        aggrcon,
                      ],
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
