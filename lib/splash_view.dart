import 'dart:async';

import 'package:flash_screen/constants/app_colors.dart';
import 'package:flash_screen/constants/app_images.dart';
import 'package:flash_screen/login_view.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Image.asset(
        AppImages.splashImage,
      ),
    );
  }
}
