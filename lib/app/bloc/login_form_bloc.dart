import 'dart:async';

class LoginBloc {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  // Get stream data
  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _passwordController.stream;

  // Insert values to string
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // dispose
  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
