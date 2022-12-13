import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/Ui/screens/login_page.dart';
import 'package:happy_texting/Ui/widgets/custom_button.dart';

import 'package:happy_texting/Ui/widgets/custom_text_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  static String id = 'Reset Password';
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
                    Text(
                      'Reset Your Password?',
                      style: TextStyle(
                          color: const Color(0xff3A3C3F),
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
                height: 326.h,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: const Color(0xffE6EAEE),
                    width: 1.sp,
                  ),
                  borderRadius: BorderRadius.circular(4.sp),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.5.sp),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.5.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'New Password',
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
                        height: 10.sp,
                      ),
                      const CustomTextField(),
                      SizedBox(
                        height: 16.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm New Password',
                            style: TextStyle(
                              fontFamily: 'metropolis',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const CustomTextField(),
                      SizedBox(height: 81.sp),
                      CustomButton(
                        text: 'Send me reset instruction',
                        ontap: () {
                          Navigator.pushNamed(context, LoginPage.id);
                        },
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
