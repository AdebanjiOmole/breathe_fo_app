import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color bgColor;
  final Color? borderColor;
  final Color textColor;
  final double buttonWidth;
  final void Function()? onPressed;
  const CustomButton({
    required this.buttonText,
    required this.bgColor,
    required this.textColor,
    required this.buttonWidth,
    this.onPressed,
    this.borderColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      height: 60.h,
      width: buttonWidth,
      decoration: BoxDecoration(
          boxShadow: const [
            CustomBoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 0.0),
                blurRadius: 3.0,
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: borderColor!, width: 0.1)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Colors.transparent,
          shadowColor: AppColors.blackColor,
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}

class CustomBoxShadow extends BoxShadow {
  @override
  // ignore: overridden_fields
  final BlurStyle blurStyle;

  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    this.blurStyle = BlurStyle.normal,
  }) : super(color: color, offset: offset, blurRadius: blurRadius);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) result.maskFilter = null;
      return true;
    }());
    return result;
  }
}

class RedCustomButton extends StatelessWidget {
  final String buttonText;
  final Color bgColor;
  final Color? borderColor;
  final Color textColor;
  final double buttonWidth;
  final void Function()? onPressed;
  const RedCustomButton({
    required this.buttonText,
    required this.bgColor,
    required this.textColor,
    required this.buttonWidth,
    this.onPressed,
    this.borderColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      height: 60.h,
      width: buttonWidth,
      decoration: BoxDecoration(
          boxShadow: const [
            CustomBoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 0.0),
                blurRadius: 2.0,
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: const Color(0xffC52F33), width: 1)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Colors.transparent,
          shadowColor: AppColors.blackColor,
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: const Color(0xffC52F33),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  final Color? borderColor;
  final Color? bgColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final Widget child;
  final double? borderR;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  const CustomButtons({
    required this.buttonWidth,
    required this.child,
    this.buttonHeight,
    this.bgColor,
    this.onPressed,
    this.borderColor,
    this.margin,
    this.borderR,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          margin: margin,
          height: buttonHeight,
          width: buttonWidth,
          decoration: BoxDecoration(
              color: bgColor,
              boxShadow: const [
                CustomBoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 1.0,
                    blurStyle: BlurStyle.outer)
              ],
              borderRadius: BorderRadius.circular(borderR!),
              border: Border.all(color: borderColor!, width: 0.1)),
          child: child),
    );
  }
}
