import 'package:flutter/material.dart';

import 'Ui/screens/login_page.dart';

void main() {
  runApp(const HappyTexting());
}

class HappyTexting extends StatelessWidget {
  const HappyTexting({super.key});
  static String id = 'Home Page';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => const LoginPage(),
      },
      initialRoute: LoginPage.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
