import 'package:flash_screen/constants/app_colors.dart';
import 'package:flash_screen/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, this.pic, this.text, this.text2, this.height});
  final String? pic;
  final String? text;
  final String? text2;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: kSize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.basePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text!,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text2!,
                  style: const TextStyle(
                    color: AppColors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(pic!),
          ],
        ),
      ),
    );
  }
}
