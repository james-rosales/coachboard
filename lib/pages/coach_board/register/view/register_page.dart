import 'package:coachboard/pages/coach_board/coach_board.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: RegisterForm(),
      ),
    );
  }
}
