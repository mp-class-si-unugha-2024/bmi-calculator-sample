import 'package:get/get.dart';

class HomeController extends GetxController {
  final height = 150.obs;

  // ini sebuah fungsi dengan nama increment, kamu bisa mengubah namanya
  void increment() {
    height.value++;
  }
}
