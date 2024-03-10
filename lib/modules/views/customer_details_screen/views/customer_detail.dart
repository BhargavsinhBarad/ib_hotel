import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/const/tstyle.dart';

class customer_detail extends StatelessWidget {
  customer_detail({super.key});
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
                        width: Get.width * 0.18,
                      ),
                      const Text(
                        "Customer Details",
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
                  Container(
                    height: Get.height * 0.95,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Booking Type:"),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: RadioListTile(
                                        value: "online",
                                        groupValue: '',
                                        onChanged: (val) {},
                                      ),
                                    ),
                                    // const Text(
                                    //   "Online",
                                    //   style: TextStyle(fontSize: 12),
                                    // ),
                                    Expanded(
                                      child: RadioListTile(
                                        // title: Text("online"),
                                        value: "offline",
                                        groupValue: '',
                                        onChanged: (val) {},
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: const Text(
                                    //     "Offline",
                                    //     style: TextStyle(fontSize: 12),
                                    //   ),
                                    // ),
                                  ],
                                )
                              ],
                            ))
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
                                  Text("Room NO.:"),
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
                                    width: Get.width * 0.25,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                      hintText: "306",
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
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Customer Name.:"),
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
                                  Text("check-in:"),
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
                                          const Icon(Icons.calendar_month),
                                      hintText: "00:00:00 am",
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
                                  Text("check-out:"),
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
                                          const Icon(Icons.calendar_month),
                                      hintText: "00:00:00 am",
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
                                  Text("Room Category:"),
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
                                      hintText: "Couple room",
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
                        size01,
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Payment:"),
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
                                      hintText: "000₹",
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
