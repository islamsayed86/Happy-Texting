import 'package:flutter/material.dart';
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 9.5, vertical: 44.5),
              child: Container(
                width: 371,
                height: 400,
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
                            'New Password',
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
                            'Confirm New Password',
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
                      const SizedBox(height: 59),
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
