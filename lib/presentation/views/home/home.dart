import 'package:breathe_fo_app/presentation/views/orders/order.dart';
import 'package:breathe_fo_app/presentation/widgets/custom_button.dart';
import 'package:breathe_fo_app/presentation/widgets/spacer.dart';
import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:breathe_fo_app/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.scaffoldBackgroundColor,
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomButtons(
            margin: EdgeInsets.fromLTRB(21.w, 75.h, 21.w, 5.h),
            borderR: 10.r,
            borderColor: AppColors.primaryColor,
            bgColor: AppColors.scaffoldBackgroundColor,
            onPressed: () {
              context.navigate(const OrderScreen());
            },
            buttonWidth: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.fromLTRB(44.w, 60.h, 10.w, 60.h),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'images/ff.svg',
                  ),
                  Space(45.w),
                  Text(
                    "Orders",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Space(76.h),
          CustomButtons(
            margin: EdgeInsets.fromLTRB(21.w, 20.h, 21.w, 5.h),
            borderR: 10.r,
            borderColor: AppColors.primaryColor,
            bgColor: AppColors.scaffoldBackgroundColor,
            onPressed: () {},
            buttonWidth: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.fromLTRB(44.w, 60.h, 10.w, 60.h),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'images/hs.svg',
                  ),
                  Space(45.w),
                  Text(
                    "History",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
