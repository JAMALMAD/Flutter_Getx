import 'package:get/get.dart';

class Countercontroller extends GetxController{
  var count = 0;
  void increament() {
    count ++;
    update();
  }

}