import 'package:coachboard/widgets/labeled_textfield.dart';
import 'package:coachboard/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(60.0),
          child: Text(
            'Coach Registration',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 211, 127, 2)),
          ),
        ),
        LabeledTextfield(
          label: 'First Name',
          obscure: false,
          onChanged: (value) {},
        ),
        LabeledTextfield(
          label: 'Last Name',
          obscure: false,
          onChanged: (value) {},
        ),
        LabeledTextfield(
          label: 'Middle Name (Optional)',
          obscure: false,
          onChanged: (value) {},
        ),
        LabeledTextfield(
          label: 'Email',
          obscure: false,
          onChanged: (value) {},
        ),
        LabeledTextfield(
          label: 'Password',
          obscure: true,
          onChanged: (value) {},
        ),
        LabeledTextfield(
          label: 'Confirm Password',
          obscure: true,
          onChanged: (value) {},
        ),
        LabeledTextfield(
          label: 'Team Name',
          obscure: false,
          onChanged: (value) {},
        ),
        const RoundedButton(
          // onPress: () => bloc.add(LoginPressed()),
          label: 'Register',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Back to',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () => context.push('/login'),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 211, 127, 2),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
