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
        padding: const EdgeInsets.symmetric(vertical: 45),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Happy ',
                  style: TextStyle(
                      color: Color(0xff81CFD2),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Texting',
                  style: TextStyle(
                      color: Color(0xff031D4A),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 9.5, vertical: 44.5),
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
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.5),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 37.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'metropolis',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff333333),
                            ),
                          ),
                          // CustomFormTextFiled()
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'metropolis',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff333333),
                            ),
                          ),
                          // CustomFormTextFiled()
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, ForgotPassword.id);
                            },
                            child: const Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontFamily: 'metropolis',
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff505050),
                              ),
                            ),
                          ),
                          // CustomFormTextFiled()
                        ],
                      ),
                      const SizedBox(height: 59),
                      const CustomButton(
                        text: 'Login',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 85,
                vertical: 50,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff6F7072),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 220,
                  height: 60,
                  child: const Center(
                    child: Text(
                      'Create New Account',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
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
