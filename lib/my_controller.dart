
import 'package:get/get.dart';

class MyController extends GetxController{
  var count = 0;

  void increment(){
    count++;
    update();  //will update the count variable on UI which uses it
  }


}