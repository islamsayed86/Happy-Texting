import 'package:flutter/material.dart';
import 'package:happy_texting/Ui/screens/forgot_password_page.dart';
import 'package:happy_texting/core/widgets/Custom_GestureDetector.dart';
import 'package:happy_texting/core/widgets/Logo.dart';
import 'package:happy_texting/core/widgets/custom_button.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/core/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/widgets/custom_text_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'Login Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: kDarkBlue,
      //   ),
      // ),
      backgroundColor: kLightGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.sp),
        child: ListView(
          children: [
            Logo(
              size: 50.sp,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 9.5.sp, vertical: 44.5.sp),
              child: CustomContainer(
                hight: 361.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.5.sp),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 37.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextStyle(
                            yourText: 'Email',
                            size: 13.sp,
                          ),
                          // CustomFormTextFiled()
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomTextField(),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextStyle(
                            yourText: 'password',
                            size: 13.sp,
                          ),
                          // CustomFormTextFiled()
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomTextField(),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, ForgotPassword.id);
                            },
                            child: CustomTextStyle(
                              yourText: 'Forgot password?',
                              size: 16.sp,
                              color: kGrey,
                            ),
                          ),
                          // CustomFormTextFiled()
                        ],
                      ),
                      SizedBox(height: 59.h),
                      const CustomButton(
                        text: 'Login',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 85.sp,
              ),
              child: const CustomGestureDetector(),
            ),
          ],
        ),
      ),
    );
  }
}
