import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/auth_feature/data/models/app_router.dart';

import 'auth_feature/Ui/screens/login_page.dart';

void main() {
  runApp(const HappyTexting());
}

class HappyTexting extends StatelessWidget {
  const HappyTexting({super.key});
  static String id = 'Home Page';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            routes: appRoutes,
            initialRoute: LoginPage.id,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
