import 'package:coachboard/pages/coach_board/coach_board.dart';
import 'package:coachboard/widgets/labeled_textfield.dart';
import 'package:coachboard/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<CoachBoardBloc>();
    return BlocBuilder<CoachBoardBloc, CoachBoardState>(
        builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(60.0),
            child: Text(
              'Coach Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Color.fromARGB(255, 211, 127, 2)),
            ),
          ),
          LabeledTextfield(
            errorText: state.errorTextemail,
            label: 'Email',
            onChanged: (value) => bloc.add(
              EmailChanged(value),
            ),
            obscure: false,
          ),
          LabeledTextfield(
            label: 'Password',
            onChanged: (value) {},
            obscure: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'No account yet?',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign-up',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 211, 127, 2),
                  ),
                ),
              ),
            ],
          ),
          RoundedButton(
            onPress: () => bloc.add(LoginPressed()),
            label: 'Login',
          ),
        ],
      );
    });
  }
}
