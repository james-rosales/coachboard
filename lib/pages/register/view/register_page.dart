import 'package:coachboard/pages/register/register.dart';
import 'package:coachboard/widgets/message_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/result/result.dart';

class RegisterPage extends StatelessWidget {
  static const route = '/register';

  const RegisterPage({
    super.key,
  });
  void listener(BuildContext context, RegisterState state) {
    switch (state.requestStatus) {
      case RequestStatus.inProgress:
        showDialog(
          useRootNavigator: false,
          context: context,
          builder: (BuildContext context) {
            return const Dialog(
              child: MessageBox(
                content: 'Please wait...',
                title: 'Loggin in',
              ),
            );
          },
        );
        break;
      case RequestStatus.success:
        Navigator.of(context).pop();
        break;
      case RequestStatus.failure:
        if (state.firstName.value.isEmpty) {
          showDialog(
            barrierDismissible: false,
            useRootNavigator: false,
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: MessageBox(
                  content: state.firstName.error,
                  title: 'Error',
                ),
              );
            },
          );
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
        create: (context) => RegisterBloc(RegisterState()),
        child: Builder(builder: (context) {
          return BlocListener<RegisterBloc, RegisterState>(
              listener: (context, state) => listener(context, state),
              child: const Scaffold(
                body: SingleChildScrollView(
                  child: RegisterForm(),
                ),
              ));
        }));
  }
}
