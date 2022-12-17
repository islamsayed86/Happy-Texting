import 'package:flutter/cupertino.dart';
import 'package:happy_texting/auth_feature/Ui/screens/forgot_password_page.dart';
import 'package:happy_texting/auth_feature/Ui/screens/login_page.dart';
import 'package:happy_texting/auth_feature/Ui/screens/reset_password_page.dart';

Map<String, WidgetBuilder> myRoutes = {
  LoginPage.id: (context) => LoginPage(),
  ResetPassword.id: (context) => ResetPassword(),
  ForgotPassword.id: (context) => ForgotPassword(),
};
