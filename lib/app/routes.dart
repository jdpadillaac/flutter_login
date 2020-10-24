import 'package:flutter/material.dart';
import 'package:flutter_login/app/pages/home_page/home_page.dart';
import 'package:flutter_login/app/pages/login_page/login_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  HomePage.routeName: (BuildContext context) => HomePage(),
  LoginPage.routeName: (BuildContext context) => LoginPage()
};
