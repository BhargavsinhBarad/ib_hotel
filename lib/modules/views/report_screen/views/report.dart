import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/List/constlist.dart';

import 'package:ib_hotel/modules/views/report_screen/controller/boxcontroller.dart';

import '../../../utils/const/tstyle.dart';

class report extends StatelessWidget {
  report({super.key});
  Boxcontroller boxcontroller = Get.put(Boxcontroller());
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
                      style: selectstyle,
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
                      width: Get.width * 0.3,
                    ),
                    const Text(
                      "Report",
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
                      child: Image.asset("assest/Image/profile icon.png"),
                    ),
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
                    SizedBox(
                      width: Get.width * 0.025,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SimpleDialog(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topStart,
                                                      child: SizedBox(
                                                        height: 20,
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assest/Image/arrow.png"),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: Get.width * 0.27,
                                                    ),
                                                    const Text(
                                                      "Report",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            "From:",
                                                            style: headerstyle,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    width02,
                                                    Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "01-01-2024",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text("To:",
                                                              style:
                                                                  headerstyle),
                                                        ],
                                                      ),
                                                    ),
                                                    width02,
                                                    Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "01-01-2024",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            "Type:",
                                                            style: headerstyle,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    width02,
                                                    Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "customer",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: Get.height * 0.05,
                                                      width: Get.width * 0.34,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
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
                                                      width: Get.width * 0.34,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Colors.blue),
                                                      child: const Center(
                                                        child: Text(
                                                          "Download",
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
                                          )
                                        ],
                                      ),
                                      SimpleDialog(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topStart,
                                                      child: SizedBox(
                                                        height: 20,
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assest/Image/arrow.png"),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: Get.width * 0.27,
                                                    ),
                                                    const Text(
                                                      "Report",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            "From:",
                                                            style: headerstyle,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    width02,
                                                    Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "01-01-2024",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text("To:",
                                                              style:
                                                                  headerstyle),
                                                        ],
                                                      ),
                                                    ),
                                                    width02,
                                                    Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "01-01-2024",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            "Report Type:",
                                                            style: headerstyle,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    width02,
                                                    Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "Housekeeping",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          size01,
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "Air conditioner",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          size01,
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "plumbing",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          size01,
                                                          Container(
                                                            height: Get.height *
                                                                0.05,
                                                            width: Get.width *
                                                                0.25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                "furniture",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                size01,
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: Get.height * 0.05,
                                                      width: Get.width * 0.34,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
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
                                                      width: Get.width * 0.34,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Colors.blue),
                                                      child: const Center(
                                                        child: Text(
                                                          "Download",
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
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
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
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
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
                GetBuilder<Boxcontroller>(
                  builder: (ctx) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            boxcontroller.changevalue();
                          },
                          child: Container(
                            height: Get.height * 0.05,
                            width: Get.width * 0.25,
                            decoration: BoxDecoration(
                              color: (boxcontroller.select == true)
                                  ? Colors.blue.withOpacity(0.3)
                                  : null,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Customer",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            boxcontroller.changevalue();
                          },
                          child: Container(
                            height: Get.height * 0.05,
                            width: Get.width * 0.25,
                            decoration: BoxDecoration(
                              color: (boxcontroller.select == true)
                                  ? null
                                  : Colors.blue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Vendor",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Past 7 days",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: Get.height * 0.7,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      const Divider(),
                      Table(
                        children: reportlist
                            .map(
                              (e) => TableRow(children: [
                                Column(children: [
                                  Text(e['date'], style: datastyle)
                                ]),
                                Column(children: [
                                  Text(e['day'], style: datastyle)
                                ]),
                                SizedBox(
                                  width: Get.width * 0.02,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return SimpleDialog(
                                            children: <Widget>[
                                              Container(
                                                height: Get.height * 0.32,
                                                padding:
                                                    const EdgeInsets.all(15),
                                                child: Column(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topStart,
                                                      child: SizedBox(
                                                        height: 20,
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assest/Image/arrow.png"),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: Get.height * 0.15,
                                                      width: Get.width * 0.31,
                                                      child: Image.asset(
                                                        "assest/Image/download.png",
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const Text(
                                                      "Report Downloaded",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: Get.height * 0.04,
                                                      width: Get.width * 0.3,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          "View",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
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
                                    child: const Center(
                                      child: Text(
                                        "Get Report",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            )
                            .toList(),
                      ),
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
