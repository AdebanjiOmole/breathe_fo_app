import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appBarr(
    BuildContext context, String text, double elevation, Color color) {
  return AppBar(
    elevation: elevation,
    backgroundColor: color,
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Icon(
        Icons.arrow_back_ios,
        color: AppColors.blackColor,
      ),
    ),
    title: Text(
      text,
      style: TextStyle(
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontSize: 20.sp,
      ),
    ),
    centerTitle: true,
  );
}
