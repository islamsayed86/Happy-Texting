import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/Ui/screens/reset_password_page.dart';
import 'package:happy_texting/Ui/widgets/custom_button.dart';

import 'package:happy_texting/Ui/widgets/custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  static String id = 'Forgot Password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FB),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.sp),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Happy ',
                  style: TextStyle(
                      color: const Color(0xff81CFD2),
                      fontSize: 27.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Texting',
                  style: TextStyle(
                      color: const Color(0xff031D4A),
                      fontSize: 27.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: const Color(0xff182C4F),
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(
                      'Forgot Your Password?',
                      style: TextStyle(
                          color: const Color(0xff505050),
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'metropolis'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 9.5.sp,
              ),
              child: Container(
                width: 371.w,
                height: 201.h,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: const Color(0xffE6EAEE),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(4),
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
                      SizedBox(height: 20.h),
                      CustomButton(
                        ontap: () {
                          Navigator.pushNamed(context, ResetPassword.id);
                        },
                        text: 'Send me reset instruction',
                      ),
                    ],
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
