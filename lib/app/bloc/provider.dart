import 'package:flutter/material.dart';
import 'package:flutter_login/app/bloc/login_form_bloc.dart';

class BlocProvider extends InheritedWidget {
  final loginBlock = LoginBloc();

  BlocProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static LoginBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<BlocProvider>()
        .loginBlock;
  }
}
