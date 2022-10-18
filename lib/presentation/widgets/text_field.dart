import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormInput extends StatelessWidget {
  const TextFormInput(
      {Key? key,
      this.controller,
      this.autovalidateMode,
      this.validator,
      this.labelText,
      required this.obscureText,
      this.suffixIcon,
      this.prefixIcon,
      this.maxLines,
      this.expands,
      this.textAlign,
      this.onChanged,
      this.hintText,
      this.minLines})
      : super(key: key);

  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int? minLines;
  final bool? expands;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      textAlign: textAlign!,
      validator: validator,
      controller: controller,
      cursorColor: AppColors.primaryColor,
      autovalidateMode: autovalidateMode,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffD4D2D2).withOpacity(0.30),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        // contentPadding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.w),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.textColor,
          fontWeight: FontWeight.w100,
          fontSize: 14.sp,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r)),
      ),
    );
  }
}
