import 'package:coachboard/pages/coach_board/coach_board.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoachBoardBloc>(
        create: (context) => CoachBoardBloc(CoachBoardState()),
        child: const Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(
              double.infinity,
              60,
            ),
            child: LoginAppBar(),
          ),
          body: SingleChildScrollView(
            child: LoginForm(),
          ),
        ));
  }
}
