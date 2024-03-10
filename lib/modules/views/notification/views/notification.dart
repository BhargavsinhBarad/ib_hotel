import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/List/constlist.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Image.asset("assest/Image/menu icon.png"),
                      SizedBox(
                        width: Get.width * 0.25,
                      ),
                      const Text(
                        "Notification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Spacer(),
                      Image.asset("assest/Image/notification icon.png"),
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
                  SizedBox(
                    height: Get.height * 0.055,
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
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "Today",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: notification0
                              .map(
                                (e) => Row(
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.06,
                                      width: Get.width * 0.23,
                                      child: Image.asset(
                                          "assest/Image/profile.png"),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("${e['name']}"),
                                        Text(
                                          "${e['book']}",
                                          style: const TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Text("2 min")
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        const Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "Yesterday",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: notification1
                              .map(
                                (e) => Row(
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.06,
                                      width: Get.width * 0.23,
                                      child: Image.asset(
                                          "assest/Image/profile.png"),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("${e['name']}"),
                                        Text(
                                          "${e['book']}",
                                          style: const TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Text("2 min")
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        const Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "1 week ago",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: notification2
                              .map(
                                (e) => Row(
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.06,
                                      width: Get.width * 0.23,
                                      child: Image.asset(
                                          "assest/Image/profile.png"),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("${e['name']}"),
                                        Text(
                                          "${e['book']}",
                                          style: const TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Text("2 min")
                                  ],
                                ),
                              )
                              .toList(),
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
