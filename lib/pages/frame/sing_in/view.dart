import 'package:chatty/common/style/style.dart';
import 'package:chatty/common/values/colors.dart';
import 'package:chatty/pages/frame/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller.dart';

class SignInPage extends GetView<SingInController> {
  const SignInPage({super.key});

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: const Text(
        "Chat",
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildThirdPartyGoogleLogin(String loginType) {
    return GestureDetector(
      child: Container(
        width: 295.w,
        height: 44.h,
        decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
              )
            ]),
        child: Row(
          children: [
            Container(
              child: Image.asset("assets/icons/google.png"),
            ),
            Container(
              child: const Text(
                "Google ile giriş",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryText,
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        //print("..buradan giriş yap..");
        controller.handleSignIn("google");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildThirdPartyGoogleLogin("Google"),
          ],
        ),
      ),
    );
  }
}
