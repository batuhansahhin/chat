import 'package:chatty/common/entities/entities.dart';
import 'package:chatty/common/routes/names.dart';
import 'package:chatty/pages/frame/sing_in/index.dart';
import 'package:chatty/pages/frame/welcome/state.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SingInController extends GetxController {
  SingInController();

  final state = SingInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['openid']);

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "phone number") {
        print("telefonla giriş");
      } else if (type == "google") {
        var user = await _googleSignIn.signIn();
        if (user != null) {
          String? displayName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photoUrl = user.photoUrl ?? "assets/icons/google.png";
          LoginRequestEntity LoginRequestEntityEntity = LoginRequestEntity();
          LoginRequestEntityEntity.avatar = photoUrl;
          LoginRequestEntityEntity.name = displayName;
          LoginRequestEntityEntity.email = email;
          LoginRequestEntityEntity.open_id = id;
          LoginRequestEntityEntity.type = 2;
          aysncPostAllData();
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('error login');
      }
    }
  }

  aysncPostAllData() {
    print("message sayfası");
    Get.offAllNamed(AppRoutes.Message);
  }
}
