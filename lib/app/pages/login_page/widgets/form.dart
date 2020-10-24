import 'package:flutter/material.dart';
import 'package:flutter_login/app/bloc/login_form_bloc.dart';
import 'package:flutter_login/app/bloc/provider.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bloc = BlocProvider.of(context);

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
                _emailInput(bloc),
                _passwordInput(bloc),
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

  StreamBuilder _emailInput(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (context, snapshot) {
        return Container(
          padding: EdgeInsets.only(top: 20),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: 'Email',
              counterText: snapshot.data,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onChanged: bloc.changeEmail,
          ),
        );
      },
    );
  }

  StreamBuilder _passwordInput(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (context, snapshot) {
        return Container(
          padding: EdgeInsets.only(top: 20),
          child: TextFormField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            onChanged: bloc.changePassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Contraseña',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        );
      },
    );
  }
}
