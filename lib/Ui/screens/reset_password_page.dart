import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/Ui/screens/login_page.dart';
import 'package:happy_texting/core/widgets/Logo.dart';
import 'package:happy_texting/core/widgets/custom_button.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/core/widgets/custom_text_field.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/widgets/custom_text_style.dart';
import 'package:happy_texting/data/models/enter_email.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  static String id = 'Reset Password';

  @override
  Widget build(BuildContext context) {
    EnterEmail email = ModalRoute.of(context)!.settings.arguments as EnterEmail;
    return Scaffold(
      backgroundColor: kLightGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.sp),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(
                  size: 27.sp,
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
                    CustomTextStyle(
                      yourText: 'Reset Your Password?',
                      color: kDarkGrey,
                      size: 24.sp,
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
              child: CustomContainer(
                hight: 326.h,
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
                          CustomTextStyle(
                            yourText: 'New Password',
                            size: 13.sp,
                            color: kDarkerGrey,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const CustomTextFormField(),
                      SizedBox(
                        height: 16.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextStyle(
                            yourText: 'Confirm New Password',
                            size: 13.sp,
                            color: kDarkerGrey,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const CustomTextFormField(),
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
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: CustomTextStyle(
                yourText: 'your email is : ${email.yourEmail} ',
                size: 16.sp,
                color: kGrey,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
