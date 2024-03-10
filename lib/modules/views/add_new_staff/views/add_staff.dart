import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/const/tstyle.dart';

class add_staff extends StatelessWidget {
  add_staff({super.key});
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
                    style: selectstyle,
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
            padding: const EdgeInsets.all(10),
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
                        width: Get.width * 0.2,
                      ),
                      const Text(
                        "Add New Staff",
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
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.1,
                                    ),
                                    SimpleDialog(
                                      children: <Widget>[
                                        Container(
                                          child: Container(
                                            height: Get.height * 0.15,
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Role : ",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    Container(
                                                      width: Get.width * 0.4,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            color: Colors.blue),
                                                      ),
                                                      child: const Row(
                                                        children: [
                                                          Text(
                                                            "Select Sattf Role",
                                                            style: TextStyle(
                                                                fontSize: 10),
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
                                                  height: Get.height * 0.02,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: Get.height * 0.05,
                                                      width: Get.width * 0.35,
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
                                                      width: Get.width * 0.35,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
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
                                        )
                                      ],
                                    ),
                                    SimpleDialog(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            height: Get.height * 0.32,
                                            width: Get.width,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    const Expanded(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text("Role: "),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width:
                                                                Get.width * 0.4,
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
                                                                  "Select Sattf Role",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                                Spacer(),
                                                                Icon(
                                                                  Icons
                                                                      .arrow_drop_down,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                Get.width * 0.4,
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
                                                                  "Housekeeping",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                                Spacer(),
                                                                Icon(
                                                                  Icons
                                                                      .arrow_drop_down,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                Get.width * 0.4,
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
                                                                  "Security Gard",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                                Spacer(),
                                                                Icon(
                                                                  Icons
                                                                      .arrow_drop_down,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                Get.width * 0.4,
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
                                                                  "Manager",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                                Spacer(),
                                                                Icon(
                                                                  Icons
                                                                      .arrow_drop_down,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                Get.width * 0.4,
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
                                                                  "Receptioniest",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                                Spacer(),
                                                                Icon(
                                                                  Icons
                                                                      .arrow_drop_down,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                Get.width * 0.4,
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
                                                                  "Electrocution",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                                Spacer(),
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
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: Get.height * 0.05,
                                                      width: Get.width * 0.35,
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
                                                      width: Get.width * 0.35,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
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
                            const Icon(Icons.arrow_back),
                            const Spacer(),
                            Container(
                              height: Get.height * 0.03,
                              width: Get.width * 0.22,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        size01,
                        Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Name.:"),
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
                                      hintText: "Xyz Jojo",
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Text("Address :")),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.1,
                                    child: TextFormField(
                                        maxLines: 3,
                                        decoration: InputDecoration(
                                          hintText: "101,cdfcf,cdfrfm,",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Phone Number:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "1231231230",
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Email Add:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "xyz@gmail.com",
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Password:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "12345678",
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Role:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      suffixIcon:
                                          const Icon(Icons.arrow_drop_down),
                                      hintText: "Housekeeping",
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Document:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    width: Get.width * 0.35,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      suffixIcon:
                                          const Icon(Icons.arrow_drop_down),
                                      hintText: "Aadhaar card",
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Upload Doc:"),
                                ],
                              ),
                            ),
                            width02,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.05,
                                    width: Get.width * 0.35,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      suffixIcon: const Icon(Icons.camera_alt),
                                      hintText: "Select Image",
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
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              height: Get.height * 0.05,
                              width: Get.width * 0.35,
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
                              width: Get.width * 0.35,
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
            ),
          )
        ],
      ),
    );
  }
}
