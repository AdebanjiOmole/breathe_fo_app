import 'package:breathe_fo_app/presentation/widgets/custom_button.dart';
import 'package:breathe_fo_app/presentation/widgets/spacer.dart';
import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButtons(
      borderR: 0.r,
      borderColor: Colors.white,
      bgColor: AppColors.scaffoldBackgroundColor,
      onPressed: () {},
      buttonWidth: MediaQuery.of(context).size.width,
      child: Padding(
          padding: EdgeInsets.only(
            left: 25.w,
            right: 44.w,
            top: 14.h,
            bottom: 12.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Louis Med Hospital",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
              Space(8.h),
              Text(
                "Plot 8 Block 91 Iron Bar Street, off The Province St, Lekki Phase 1, Lekki",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              Space(7.h),
              Text(
                "Lagos, Nigeria",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              Space(7.h),
              Text(
                "+2348013456789",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )),
    );
  }
}

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    required this.orderType,
    Key? key,
  }) : super(key: key);

  final Widget orderType;
  @override
  Widget build(BuildContext context) {
    return CustomButtons(
      borderR: 10.r,
      margin: EdgeInsets.only(left: 21.w, right: 21.w),
      borderColor: Colors.white,
      bgColor: AppColors.scaffoldBackgroundColor,
      onPressed: () {},
      buttonWidth: MediaQuery.of(context).size.width,
      child: Padding(
          padding: EdgeInsets.only(
            top: 14.h,
            bottom: 12.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space(8.h),
              orderType,
            ],
          )),
    );
  }
}

class OrderTypes extends StatelessWidget {
  const OrderTypes({
    Key? key,
    required this.type,
    required this.size,
  }) : super(key: key);

  final String type;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 38.w,
      ),
      child: Row(
        children: [
          Text(
            type,
            style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
          ),
          Space(77.w),
          Text(
            size,
            style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
