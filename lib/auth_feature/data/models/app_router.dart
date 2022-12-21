import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_texting/auth_feature/presentation/screens/forgot_password_page.dart';
import 'package:happy_texting/auth_feature/presentation/screens/login_page.dart';
import 'package:happy_texting/auth_feature/presentation/screens/reset_password_page.dart';

Map<String, WidgetBuilder> appRoutes = {
  LoginPage.id: (context) => LoginPage(),
  ResetPassword.id: (context) => ResetPassword(),
  ForgotPassword.id: (context) => ForgotPassword(),
};
