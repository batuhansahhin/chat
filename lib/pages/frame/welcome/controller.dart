import 'package:chatty/common/routes/names.dart';
import 'package:chatty/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();

  final title = "Chat";

  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();

    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
  // Controller'ın "Ready" durumuna geçmesi
  //için gereken işlemleri içerir uygulamanın
  //durumunu yönetmek ve uygulamadaki değişiklikleri
  // algılamak için kullanılır.
}
