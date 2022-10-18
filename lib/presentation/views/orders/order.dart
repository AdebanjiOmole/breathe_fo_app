import 'package:breathe_fo_app/presentation/views/orders/order_details.dart';
import 'package:breathe_fo_app/presentation/widgets/custom_button.dart';
import 'package:breathe_fo_app/presentation/widgets/custum_appbar.dart';
import 'package:breathe_fo_app/presentation/widgets/spacer.dart';
import 'package:breathe_fo_app/utils/bg_container.dart';
import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(
          context, "Assigned Order", 2, AppColors.scaffoldBackgroundColor),
      body: BgContainer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22.w, top: 18.h, right: 55.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "30-09-2022",
                      style: TextStyle(
                          color: AppColors.red,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Order",
                      style: TextStyle(
                          color: AppColors.red,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 33.w, top: 6.h, right: 39.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ADDRESS DETAILS",
                      style: TextStyle(
                          color: AppColors.radiusCOLOR,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SDLAG045",
                      style: TextStyle(
                          color: AppColors.radiusCOLOR,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Space(4.h),
              const AddressDetails(),
              Padding(
                padding: EdgeInsets.only(left: 32.w, top: 15.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "SHIPMENT DETAILS",
                    style: TextStyle(
                        color: AppColors.radiusCOLOR,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Space(4.h),
              CustomButtons(
                margin: EdgeInsets.only(left: 21.w, right: 21.w),
                borderR: 10.r,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1x   2m  of Oxygen",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Space(12.h),
                          Text(
                            "3x   4m  of Oxygen",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Space(12.h),
                          Text(
                            "3x   4m  of Oxygen",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Space(12.h),
                          Text(
                            "3x   4m  of Oxygen",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Container(
                        color: AppColors.blackColor,
                        height: 150.h,
                        width: 1,
                        margin: EdgeInsets.only(left: 40.w, right: 20.w),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TOTAL",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Space(3.h),
                          Text(
                            "N21,500",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Space(7.h),
                          Text(
                            "Subtotal",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Space(3.h),
                          Text(
                            "N21,500",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Space(7.h),
                          Text(
                            "TVAT(7.5%)",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Space(3.h),
                          Text(
                            "N1,500",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Space(35.h),
              Text(
                "NO ASSIGNED ORDER",
                style: TextStyle(
                    color: AppColors.radiusCOLOR,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
              Space(30.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  children: [
                    Text(
                      "ACCEPT ASSIGNED ORDER",
                      style: TextStyle(
                          color: AppColors.radiusCOLOR,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    FlutterSwitch(
                      height: 20.0,
                      width: 30.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      // activeColor: lets_cyan,
                      value: false,
                      onToggle: (value) {
                        setState(() {
                          // isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                  top: 10.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "ORDER ENROUTE",
                      style: TextStyle(
                          color: AppColors.radiusCOLOR,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    FlutterSwitch(
                      height: 20.0,
                      width: 30.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      // activeColor: lets_cyan,
                      value: false,
                      onToggle: (value) {
                        setState(() {
                          // isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                  top: 10.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "ORDER DELIVERED",
                      style: TextStyle(
                          color: AppColors.radiusCOLOR,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    FlutterSwitch(
                      height: 20.0,
                      width: 30.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      // activeColor: lets_cyan,
                      value: false,
                      onToggle: (value) {
                        setState(() {
                          // isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Space(20.h),
              Text(
                "05 : 55 : 52",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              Space(20.h)
            ],
          ),
        ),
      ),
    );
  }
}
