import 'package:flutter/material.dart';
import 'package:flutter_login/data/constants.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({@required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _purpleBackGround(),
        _userInfo(),
      ],
    );
  }

  Container _userInfo() {
    return Container(
      padding: EdgeInsets.only(top: 60.0),
      child: Column(
        children: [
          Icon(Icons.person_pin_circle, color: Colors.white, size: 100),
          SizedBox(height: 20.0, width: double.infinity),
          Text(
            'Jonatan padilla',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ],
      ),
    );
  }

  Container _purpleBackGround() {
    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: loginGradientHeader,
      )),
    );
  }
}
