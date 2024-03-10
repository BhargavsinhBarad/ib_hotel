import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:get/get.dart';
import 'package:ib_hotel/modules/utils/List/constlist.dart';

import '../../../../utils/const/tstyle.dart';

TextStyle headerstyle =
    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
int? ind;
Container allcon = Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xff8efab6),
              border: Border.all(color: Colors.green),
            ),
          ),
          const Text("Ready For Booking"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfff7aeae),
              border: Border.all(color: Colors.red),
            ),
          ),
          const Text("Occupied"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfffee191),
              border: Border.all(color: Colors.amberAccent),
            ),
          ),
          const Text("Aggregated"),
        ],
      ),
      Text(
        "First Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return CustomPopup(
                    content: Container(
                      height: Get.height * 0.4,
                      width: Get.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: first[i]['bcolor'],
                        ),
                      ),
                      child: Column(
                        children: [
                          const Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              "Room Information",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Room No:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${first[i]['information']['no']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Floor:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${first[i]['information']['floor']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Room Type:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${first[i]['information']['type']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Room Location:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "${first[i]['information']['location']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Amenities:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "${first[i]['information']['amenities']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.06,
                          ),
                          const Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              "Customer Information",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Customer Name:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${first[i]['information']['cname']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Customer Type:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${first[i]['information']['ctype']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Date From:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${first[i]['information']['From']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Text("Date To:")],
                                ),
                              ),
                              width02,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${first[i]['information']['To']}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    child: Container(
                      height: Get.height * 0.01,
                      width: Get.width * 0.2,
                      decoration: BoxDecoration(
                        color: first[i]['color'],
                      ),
                      child: DottedBorder(
                        color: first[i]['bcolor'],
                        strokeWidth: 1,
                        child: Center(
                          child: Text(
                            first[i]['room'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ));
              }),
        ),
      ),
      Text(
        "Second Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: second[i]['color'],
                ),
                child: DottedBorder(
                  color: second[i]['bcolor'],
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      second[i]['room'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Text(
        "Third Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: third[i]['color'],
                  ),
                  child: DottedBorder(
                    color: third[i]['bcolor'],
                    strokeWidth: 1,
                    child: Center(
                        child: Text(
                      third[i]['room'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fourth Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: second.length,
              itemBuilder: (context, i) {
                return Container(
                  decoration: BoxDecoration(
                    color: fourth[i]['color'],
                  ),
                  child: DottedBorder(
                    color: fourth[i]['bcolor'],
                    strokeWidth: 1,
                    child: Center(
                        child: Text(
                      fourth[i]['room'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fifth  Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: fifth[i]['color'],
                ),
                child: DottedBorder(
                  color: fifth[i]['bcolor'],
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      fifth[i]['room'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  ),
);

Container readycon = Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xff8efab6),
              border: Border.all(color: Colors.green),
            ),
          ),
          const Text("Ready For Booking"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfff7aeae),
              border: Border.all(color: Colors.red),
            ),
          ),
          const Text("Occupied"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfffee191),
              border: Border.all(color: Colors.amberAccent),
            ),
          ),
          const Text("Aggregated"),
        ],
      ),
      Text(
        "First Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xff8efab6) == first[i]['color'])
                        ? first[i]['color']
                        : first[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.green == first[i]['bcolor'])
                        ? first[i]['bcolor']
                        : first[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                        child: Text(
                      first[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xff8efab6) == first[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    )),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Second Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: (Color(0xff8efab6) == second[i]['color'])
                      ? second[i]['color']
                      : second[i]['color'].withOpacity(0.2),
                ),
                child: DottedBorder(
                  color: (Colors.green == second[i]['bcolor'])
                      ? second[i]['bcolor']
                      : second[i]['bcolor'].withOpacity(0.2),
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      second[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xff8efab6) == second[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Text(
        "Third Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xff8efab6) == third[i]['color'])
                        ? third[i]['color']
                        : third[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.green == third[i]['bcolor'])
                        ? third[i]['bcolor']
                        : third[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                      child: Text(
                        third[i]['room'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (Color(0xff8efab6) == third[i]['color'])
                                ? Colors.black
                                : Colors.grey.withOpacity(0.5)),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fourth Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: second.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xff8efab6) == fourth[i]['color'])
                        ? fourth[i]['color']
                        : fourth[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.green == fourth[i]['bcolor'])
                        ? fourth[i]['bcolor']
                        : fourth[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                      child: Text(
                        fourth[i]['room'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (Color(0xff8efab6) == fourth[i]['color'])
                                ? Colors.black
                                : Colors.grey.withOpacity(0.5)),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fifth  Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: (Color(0xff8efab6) == fifth[i]['color'])
                      ? fifth[i]['color']
                      : fifth[i]['color'].withOpacity(0.2),
                ),
                child: DottedBorder(
                  color: (Colors.green == fifth[i]['bcolor'])
                      ? fifth[i]['bcolor']
                      : fifth[i]['bcolor'].withOpacity(0.2),
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      fifth[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xff8efab6) == fifth[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  ),
);
Container occupidecon = Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xff8efab6),
              border: Border.all(color: Colors.green),
            ),
          ),
          const Text("Ready For Booking"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfff7aeae),
              border: Border.all(color: Colors.red),
            ),
          ),
          const Text("Occupied"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfffee191),
              border: Border.all(color: Colors.amberAccent),
            ),
          ),
          const Text("Aggregated"),
        ],
      ),
      Text(
        "First Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xfff7aeae) == first[i]['color'])
                        ? first[i]['color']
                        : first[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.red == first[i]['bcolor'])
                        ? first[i]['bcolor']
                        : first[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                        child: Text(
                      first[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xfff7aeae) == first[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    )),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Second Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: (Color(0xfff7aeae) == second[i]['color'])
                      ? second[i]['color']
                      : second[i]['color'].withOpacity(0.2),
                ),
                child: DottedBorder(
                  color: (Colors.red == second[i]['bcolor'])
                      ? second[i]['bcolor']
                      : second[i]['bcolor'].withOpacity(0.2),
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      second[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xfff7aeae) == second[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Text(
        "Third Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xfff7aeae) == third[i]['color'])
                        ? third[i]['color']
                        : third[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.red == third[i]['bcolor'])
                        ? third[i]['bcolor']
                        : third[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                      child: Text(
                        third[i]['room'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (Color(0xfff7aeae) == third[i]['color'])
                                ? Colors.black
                                : Colors.grey.withOpacity(0.5)),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fourth Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: second.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xfff7aeae) == fourth[i]['color'])
                        ? fourth[i]['color']
                        : fourth[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.red == fourth[i]['bcolor'])
                        ? fourth[i]['bcolor']
                        : fourth[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                      child: Text(
                        fourth[i]['room'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (Color(0xfff7aeae) == fourth[i]['color'])
                                ? Colors.black
                                : Colors.grey.withOpacity(0.5)),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fifth  Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: (Color(0xfff7aeae) == fifth[i]['color'])
                      ? fifth[i]['color']
                      : fifth[i]['color'].withOpacity(0.2),
                ),
                child: DottedBorder(
                  color: (Colors.red == fifth[i]['bcolor'])
                      ? fifth[i]['bcolor']
                      : fifth[i]['bcolor'].withOpacity(0.2),
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      fifth[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xfff7aeae) == fifth[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  ),
);
Container aggrcon = Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xff8efab6),
              border: Border.all(color: Colors.green),
            ),
          ),
          const Text("Ready For Booking"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfff7aeae),
              border: Border.all(color: Colors.red),
            ),
          ),
          const Text("Occupied"),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Color(0xfffee191),
              border: Border.all(color: Colors.amberAccent),
            ),
          ),
          const Text("Aggregated"),
        ],
      ),
      Text(
        "First Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xfffee191) == first[i]['color'])
                        ? first[i]['color']
                        : first[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.amberAccent == first[i]['bcolor'])
                        ? first[i]['bcolor']
                        : first[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                        child: Text(
                      first[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xfffee191) == first[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    )),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Second Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: (Color(0xfffee191) == second[i]['color'])
                      ? second[i]['color']
                      : second[i]['color'].withOpacity(0.2),
                ),
                child: DottedBorder(
                  color: (Colors.amberAccent == second[i]['bcolor'])
                      ? second[i]['bcolor']
                      : second[i]['bcolor'].withOpacity(0.2),
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      second[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xfffee191) == second[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Text(
        "Third Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: first.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xfffee191) == third[i]['color'])
                        ? third[i]['color']
                        : third[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.amberAccent == third[i]['bcolor'])
                        ? third[i]['bcolor']
                        : third[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                      child: Text(
                        third[i]['room'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (Color(0xfffee191) == third[i]['color'])
                                ? Colors.black
                                : Colors.grey.withOpacity(0.5)),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fourth Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
              ),
              itemCount: second.length,
              itemBuilder: (context, i) {
                return Container(
                  height: Get.height * 0.01,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    color: (Color(0xfffee191) == fourth[i]['color'])
                        ? fourth[i]['color']
                        : fourth[i]['color'].withOpacity(0.2),
                  ),
                  child: DottedBorder(
                    color: (Colors.amberAccent == fourth[i]['bcolor'])
                        ? fourth[i]['bcolor']
                        : fourth[i]['bcolor'].withOpacity(0.2),
                    strokeWidth: 1,
                    child: Center(
                      child: Text(
                        fourth[i]['room'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (Color(0xfffee191) == fourth[i]['color'])
                                ? Colors.black
                                : Colors.grey.withOpacity(0.5)),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      Text(
        "Fifth  Floor",
        style: headerstyle,
      ),
      Container(
        height: Get.height * 0.15,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
            ),
            itemCount: second.length,
            itemBuilder: (context, i) {
              return Container(
                height: Get.height * 0.01,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                  color: (Color(0xfffee191) == fifth[i]['color'])
                      ? fifth[i]['color']
                      : fifth[i]['color'].withOpacity(0.2),
                ),
                child: DottedBorder(
                  color: (Colors.amberAccent == fifth[i]['bcolor'])
                      ? fifth[i]['bcolor']
                      : fifth[i]['bcolor'].withOpacity(0.2),
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      fifth[i]['room'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (Color(0xfffee191) == fifth[i]['color'])
                              ? Colors.black
                              : Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  ),
);
