import 'package:flash_screen/constants/app_colors.dart';
import 'package:flash_screen/constants/app_constants.dart';
import 'package:flash_screen/constants/app_images.dart';
import 'package:flash_screen/constants/app_strings.dart';
import 'package:flash_screen/widget/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: kSize.width,
          height: kSize.height,
          color: AppColors.bluegray.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.basePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppText.home,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomContainer(
                  height: kSize.height * 0.175,
                  pic: AppImages.shirtImage,
                  text: AppText.shirt,
                  text2: AppText.shirtcmt,
                ),
                SizedBox(
                  width: kSize.width,
                  height: kSize.height * 0.175,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(
                      AppConstants.smallPadding,
                      AppConstants.mediumPadding,
                      AppConstants.smallPadding,
                      0,
                    ),
                    child: CustomContainer(
                      text: AppText.sheo,
                      text2: AppText.sheocmt,
                      pic: AppImages.sheoImage,
                    ),
                  ),
                ),
                SizedBox(
                  width: kSize.width,
                  height: kSize.height * 0.175,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(
                        AppConstants.smallPadding,
                        AppConstants.mediumPadding,
                        AppConstants.smallPadding,
                        0),
                    child: CustomContainer(
                      text: AppText.pant,
                      text2: AppText.pantcmt,
                      pic: AppImages.pantImage,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
