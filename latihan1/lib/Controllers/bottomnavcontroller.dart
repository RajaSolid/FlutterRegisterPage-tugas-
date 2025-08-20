import 'package:get/get.dart';

class Bottomnavcontroller extends GetxController {
  var curindex = 0.obs;

  void changepage(int index){
    curindex.value = index;
  }
}