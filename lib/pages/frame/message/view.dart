import 'package:chatty/common/style/style.dart';
import 'package:chatty/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({super.key});

  //slivers

  Widget _headBar() {
    return Container(
      width: 320.w,
      height: 44.w,
      margin: EdgeInsets.only(bottom: 20.h, top: 20.h),
      child: Row(
        children: [
          Stack(
            children: [
              GestureDetector(
                child: Container(
                  width: 44.h,
                  height: 44.h,
                  decoration: BoxDecoration(
                      color: AppColors.soicalKoyuLacivert,
                      borderRadius: BorderRadius.all(Radius.circular(22.h)),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.socialAcikGri.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 1))
                      ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: _headBar(),
              )
            ],
          )
        ],
      )),
    );
  }
}
