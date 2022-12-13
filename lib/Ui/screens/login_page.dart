import 'package:flutter/material.dart';

import 'package:happy_texting/Ui/screens/forgot_password_page.dart';

import 'package:happy_texting/Ui/widgets/custom_button.dart';

import 'package:happy_texting/Ui/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'Login Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Color(0xff031D4A),
      //   ),
      // ),
      backgroundColor: const Color(0xffF8F9FB),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.sp),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Happy ',
                  style: TextStyle(
                      color: const Color(0xff81CFD2),
                      fontSize: 50.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Texting',
                  style: TextStyle(
                      color: const Color(0xff031D4A),
                      fontSize: 50.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 9.5.sp, vertical: 44.5.sp),
              child: Container(
                width: 371.w,
                height: 361.h,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: const Color(0xffE6EAEE),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4.sp),
                ),
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
                          Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'metropolis',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xff333333),
                            ),
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
                          Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'metropolis',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xff333333),
                            ),
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
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontFamily: 'metropolis',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xff505050),
                              ),
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
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff505050),
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  width: 220.w,
                  height: 48.h,
                  child: Center(
                    child: Text(
                      'Create New Account',
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 16.sp,
                          fontFamily: 'metropolis'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
