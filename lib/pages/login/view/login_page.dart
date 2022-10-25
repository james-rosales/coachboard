import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState()),
      child: const Scaffold(
        body: SingleChildScrollView(
          child: LoginForm(),
        ),
      ),
    );
  }
}
