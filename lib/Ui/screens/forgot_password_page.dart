import 'package:flutter/material.dart';
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
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Texting',
                  style: TextStyle(
                      color: Color(0xff031D4A),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xff182C4F),
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Forgot Your Password?',
                      style: TextStyle(
                          color: Color(0xff3A3C3F),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'metropolis'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 9.5,
              ),
              child: Container(
                width: 371,
                height: 230,
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
                      const SizedBox(height: 20),
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
