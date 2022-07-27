import 'package:get/get.dart';

import '../controllers/zakat_pertanian_controller.dart';

class ZakatPertanianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZakatPertanianController>(
      () => ZakatPertanianController(),
    );
  }
}
