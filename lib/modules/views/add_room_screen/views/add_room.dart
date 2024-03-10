import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/const/tstyle.dart';

class add_room extends StatelessWidget {
  add_room({super.key});
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
                  height03,
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
                      Container(
                        height: Get.height * 0.03,
                        width: Get.width * 0.22,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Text(
                            "Add Room",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.025,
                      ),
                    ],
                  ),
                  Container(
                    height: Get.height * 0.8,
                    width: Get.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        size01,
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Floor.:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "Add Floor",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        size01,
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Room Number:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "Add Room Number",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        size01,
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Room category:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "Enter Type of Room",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        size01,
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Room Location:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "Enter Room Side",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        size01,
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Amenities:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "Enter Room Side",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        size01,
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              height: Get.height * 0.05,
                              width: Get.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(),
                              ),
                              child: const Center(
                                child: Text(
                                  "Cancle",
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: Get.height * 0.05,
                              width: Get.width * 0.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue),
                              child: const Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
