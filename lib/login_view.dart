import 'package:flash_screen/constants/app_colors.dart';
import 'package:flash_screen/constants/app_constants.dart';
import 'package:flash_screen/constants/app_strings.dart';
import 'package:flash_screen/widget/custom_textfield.dart';
import 'package:flash_screen/home_view.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: kSize.width,
          height: kSize.height,
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.basePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  AppText.login,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const CustomTextField(
                  hintText: AppText.usename,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  hintText: AppText.password,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      AppConstants.largepadding, 0, 0, 0),
                  child: TextButton(
                    child: const Text(
                      AppText.forget,
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: kSize.width,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(AppConstants.verysmall),
                      child: Text(
                        AppText.login,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
