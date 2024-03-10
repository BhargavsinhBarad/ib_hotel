import 'package:get/get.dart';

class Boxcontroller extends GetxController {
  bool select = true;
  void changevalue() {
    select = !select;
    update();
  }
}
