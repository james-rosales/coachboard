import 'package:coachboard/pages/register/register.dart';
import 'package:go_router/go_router.dart';

import '../../../models/result/result.dart';
import '../login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  const LoginPage({
    super.key,
  });

  void listener(BuildContext context, LoginState state) {
    switch (state.requestStatus) {
      case RequestStatus.inProgress:
        showDialog(
          useRootNavigator: false,
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: SizedBox(
                width: 450,
                height: 220,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Logging in',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.orange),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Please wait...',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
        break;
      case RequestStatus.success:
        context.push(RegisterPage.route);
        break;
      case RequestStatus.failure:
        if (state.email.value.isEmpty) {
          showDialog(
            barrierDismissible: false,
            useRootNavigator: false,
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: SizedBox(
                  width: 450,
                  height: 220,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Error',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          state.email.error,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: SizedBox(
                            width: 150,
                            height: 50,
                            child: OutlinedButton(
                              child: const Text(
                                'OK',
                                style: TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState()),
      child: Builder(
        builder: (context) {
          return BlocListener<LoginBloc, LoginState>(
            listener: (context, state) => listener(context, state),
            child: const Scaffold(
              body: SingleChildScrollView(
                child: LoginForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
