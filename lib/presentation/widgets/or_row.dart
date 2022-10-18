import 'package:breathe_fo_app/presentation/widgets/spacer.dart';
import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrRow extends StatelessWidget {
  const OrRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: AppColors.blackColor,
            height: 36.0.h,
          ),
        ),
        Space(1.w),
        Text(
          'OR',
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w300),
        ),
        Space(1.w),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: AppColors.blackColor,
            height: 36.0.h,
          ),
        ),
      ],
    );
  }
}
