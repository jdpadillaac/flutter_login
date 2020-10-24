import 'package:flutter/material.dart';
import 'package:flutter_login/app/pages/login_page/widgets/form.dart';
import 'package:flutter_login/app/pages/login_page/widgets/header.dart';

class LoginPage extends StatelessWidget {
  static String routeName = 'login-page';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          LoginHeader(size: size),
          LoginForm(),
        ],
      ),
    );
  }
}
