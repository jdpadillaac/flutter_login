import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(child: Container(height: 200)),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3.0)],
            ),
            child: Column(
              children: [
                Text('Ingreso', style: TextStyle(fontSize: 20.0)),
                _emailInput(),
                _passwordInput(),
                _loginButon()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _loginButon() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          child: Text('Ingresar'),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0.0,
        color: Color.fromRGBO(38, 151, 180, 1.0),
        textColor: Colors.white,
        onPressed: () {
          print('Ingresando');
        },
      ),
    );
  }

  Container _emailInput() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container _passwordInput() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          hintText: 'Contraseña',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
