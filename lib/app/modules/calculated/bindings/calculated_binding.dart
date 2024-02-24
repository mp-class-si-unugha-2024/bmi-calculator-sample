import 'package:get/get.dart';

import '../controllers/calculated_controller.dart';

class CalculatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalculatedController>(
      () => CalculatedController(),
    );
  }
}
