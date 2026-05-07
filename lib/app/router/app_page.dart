import 'package:flutter/material.dart';
import 'package:task_app/ui/pages/home/home_page.dart';
import 'package:task_app/ui/pages/login/login_page.dart';
import 'package:task_app/ui/pages/signup/signup_page.dart';

enum AppPage { 
  login, 
  signup,
  home,
  }

extension AppPageExtension on AppPage {
  String get path => '/$name';

  Widget get page => switch (this) {
    .login => const LoginPage(),
    .signup => const SignupPage(),
    .home => HomePage(),
  };
}
