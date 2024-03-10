import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/const/tstyle.dart';

class profile extends StatelessWidget {
  const profile({super.key});

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
                        width: Get.width * 0.3,
                      ),
                      const Text(
                        "Profile",
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
                      Image.asset("assest/Image/profile icon.png"),
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
                    height: Get.height * 0.02,
                  ),
                  const Text("You can change your current password."),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.27,
                      ),
                      const Text(
                        "Old Password  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: Get.height * .05,
                          width: Get.width * 0.08,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "123456",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.07,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.25,
                      ),
                      const Text(
                        "New Password  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: Get.height * 0.05,
                          width: Get.width * 0.08,
                          child: TextFormField(
                            maxLines: 4,
                            decoration: InputDecoration(
                              hintText: "654321",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.07,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.18,
                      ),
                      const Text(
                        "Confirm Password  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: Get.height * .05,
                          width: Get.width * 0.08,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "654321",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.07,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.425,
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
                      SizedBox(
                        width: Get.width * 0.05,
                      ),
                      Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.425,
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
          )
        ],
      ),
    );
  }
}
