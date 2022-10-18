import 'package:breathe_fo_app/presentation/views/home/home.dart';
import 'package:breathe_fo_app/presentation/widgets/custom_button.dart';
import 'package:breathe_fo_app/presentation/widgets/or_row.dart';
import 'package:breathe_fo_app/presentation/widgets/social_rows.dart';
import 'package:breathe_fo_app/presentation/widgets/spacer.dart';
import 'package:breathe_fo_app/presentation/widgets/text_field.dart';
import 'package:breathe_fo_app/utils/bg_container.dart';
import 'package:breathe_fo_app/utils/constant/colors.dart';
import 'package:breathe_fo_app/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: Padding(
          padding: EdgeInsets.fromLTRB(21.w, 60.h, 21.w, 40.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Log In",
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Text(
                  "Type in your login details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                const TextFormInput(
                  textAlign: TextAlign.start,
                  obscureText: false,
                  hintText: "Email",
                ),
                SizedBox(
                  height: 24.h,
                ),
                const TextFormInput(
                  textAlign: TextAlign.start,
                  obscureText: false,
                  hintText: "Password",
                ),
                Space(21.h),
                Row(
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: AppColors.red,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    Space(7.w),
                    GestureDetector(
                      onTap: () {},
                      // context.navigate(const ForgotPasswordEmail()),
                      child: Text(
                        'Here',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Radio(
                    //   splashRadius: 100,
                    //   value: 2,
                    //   groupValue: true,
                    //   activeColor: Colors.pink,
                    //   onChanged: (value) {
                    //     // setState(() {
                    //     //   _radioSelected = value;
                    //     //   _radioVal = 'female';
                    //     // });
                    //   },
                    // ),
                    Checkbox(
                        activeColor: const Color(0xffD9D9D9),
                        checkColor: AppColors.primaryColor,
                        //  shape: ,
                        value: true,
                        onChanged: (value) {
                          // toggleState.state = value!;
                        }),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Space(41.h),
                CustomButton(
                  buttonText: "Log In",
                  bgColor: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                  textColor: AppColors.scaffoldBackgroundColor,
                  buttonWidth: 300.w,
                  onPressed: () {
                    context.navigate(HomePage());
                  },
                ),
                Space(29.h),
                const OrRow(),
                Space(27.h),
                const SocialRow(),
                Space(120.h),
                GestureDetector(
                  // onTap: () => context.navigate(const SignupScreen()),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "You don’t have an Account? ",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300),
                        ),
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
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
