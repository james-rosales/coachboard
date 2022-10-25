import 'package:coachboard/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view.dart';

class RegisterPage extends StatelessWidget {
  static const route = '/register';

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState()),
      child: const Scaffold(
        body: SingleChildScrollView(
          child: RegisterForm(),
        ),
      ),
    );
  }
}
