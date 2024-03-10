import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/List/constlist.dart';

import '../../../utils/const/tstyle.dart';

class customer extends StatelessWidget {
  customer({super.key});
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
                    style: selectstyle,
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
      body: Stack(
        children: [
          StackContainer,
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
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
                        width: Get.width * 0.1,
                      ),
                      const Text(
                        "Customer Status",
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
                          Get.toNamed("/addcustomer");
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
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.025,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    SimpleDialog(
                                      children: <Widget>[
                                        SizedBox(
                                          height: Get.height * 0.2,
                                          width: Get.width,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Date:",
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .blue),
                                                          ),
                                                          child: const Row(
                                                            children: [
                                                              Text(
                                                                "Form: 00-00-00",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        10),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .calendar_today_sharp,
                                                                size: 18,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 15,
                                                        ),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: Colors.blue
                                                                .withOpacity(
                                                                    0.2),
                                                          ),
                                                          child: const Row(
                                                            children: [
                                                              Text(
                                                                  "Form: 00-00-00",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10)),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .calendar_today_sharp,
                                                                size: 18,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: Get.height * .01,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Booking Type :",
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .blue),
                                                          ),
                                                          child: const Row(
                                                            children: [
                                                              Text(
                                                                "Online",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        10),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                size: 18,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: Get.height * .01,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height:
                                                              Get.height * 0.05,
                                                          width:
                                                              Get.width * 0.35,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            border:
                                                                Border.all(),
                                                          ),
                                                          child: const Center(
                                                            child: Text(
                                                              "Cancle",
                                                            ),
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        Container(
                                                          height:
                                                              Get.height * 0.05,
                                                          width:
                                                              Get.width * 0.35,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              color:
                                                                  Colors.blue),
                                                          child: const Center(
                                                            child: Text(
                                                              "Save",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Container(
                          height: Get.height * 0.03,
                          width: Get.width * 0.22,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Get.width * 0.06,
                              ),
                              const Text(
                                "Filter",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
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
                              Column(children: [
                                Text('Check-in', style: headerstyle)
                              ]),
                              Column(children: [
                                Text('Check-out', style: headerstyle)
                              ]),
                              Column(children: [
                                Text('Mobile', style: headerstyle)
                              ]),
                            ]),
                          ],
                        ),
                        const Divider(),
                        Table(
                          children: customerlist
                              .map(
                                (e) => TableRow(children: [
                                  Column(children: [
                                    TextButton(
                                        onPressed: () {
                                          Get.toNamed("/customer_detail");
                                        },
                                        child:
                                            Text(e['date'], style: datastyle))
                                  ]),
                                  Column(children: [
                                    Text(e['name'], style: datastyle)
                                  ]),
                                  Column(children: [
                                    Text(e['checkin'], style: datastyle)
                                  ]),
                                  Column(children: [
                                    Text(e['checkout'], style: datastyle)
                                  ]),
                                  Column(children: [
                                    Text(e['mobile'], style: datastyle)
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
            ),
          )
        ],
      ),
    );
  }
}
