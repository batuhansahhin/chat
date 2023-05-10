import 'package:chatty/pages/frame/sing_in/controller.dart';

import 'package:get/get.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingInController>(() => SingInController());
  }
}
