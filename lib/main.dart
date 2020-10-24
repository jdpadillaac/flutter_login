import 'package:flutter/material.dart';
import 'package:flutter_login/app/bloc/provider.dart';
import 'package:flutter_login/app/pages/login_page/login_page.dart';
import 'package:flutter_login/app/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter login',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Container(
              child: Text('Hello World'),
            ),
          ),
        ),
        initialRoute: LoginPage.routeName,
        routes: appRoutes,
      ),
    );
  }
}
