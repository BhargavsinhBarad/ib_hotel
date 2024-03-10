import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/List/constlist.dart';
import '../../../utils/const/tstyle.dart';

class vendor extends StatelessWidget {
  vendor({super.key});
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
                      style: selectstyle,
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
                      width: Get.width * 0.1,
                    ),
                    const Text(
                      "Vendor Details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
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
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: Get.height * 0.055,
                        width: Get.width * 0.2,
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "serch heare..",
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.025,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/add_new_vendor");
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
                            "Add New",
                            style: TextStyle(fontSize: 10, color: Colors.white),
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
                  height: Get.height * 0.02,
                ),
                Container(
                  height: Get.height * 0.7,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Table(
                        children: [
                          TableRow(children: [
                            Column(
                                children: [Text('Date', style: headerstyle)]),
                            Column(
                                children: [Text('Name', style: headerstyle)]),
                            Column(
                                children: [Text('Mobile', style: headerstyle)]),
                            Column(children: [
                              Text('Shop Nmae', style: headerstyle)
                            ]),
                          ]),
                        ],
                      ),
                      const Divider(),
                      Table(
                        children: vendorlist
                            .map(
                              (e) => TableRow(children: [
                                Column(children: [
                                  TextButton(
                                      onPressed: () {
                                        Get.toNamed("/vendor_detail");
                                      },
                                      child: Text(e['date'], style: datastyle))
                                ]),
                                Column(children: [
                                  TextButton(
                                      onPressed: () {
                                        Get.toNamed("/vendor_detail");
                                      },
                                      child: Text(e['name'], style: datastyle))
                                ]),
                                Column(children: [
                                  TextButton(
                                      onPressed: () {
                                        Get.toNamed("/vendor_detail");
                                      },
                                      child:
                                          Text(e['mobile'], style: datastyle))
                                ]),
                                Column(children: [
                                  TextButton(
                                      onPressed: () {
                                        Get.toNamed("/vendor_detail");
                                      },
                                      child: Text(e['shop'], style: datastyle))
                                ]),
                              ]),
                            )
                            .toList(),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
