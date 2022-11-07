import 'package:coachboard/models/result/result.dart';
import 'package:coachboard/models/text_field_input/text_field_input.dart';
import 'package:coachboard/pages/login/login.dart';
import 'package:coachboard/widgets/message_dialog.dart';
import 'package:coachboard/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  const LoginPage({
    super.key,
  });

  void listener(BuildContext context, LoginState state) {
    switch (state.requestStatus) {
      case RequestStatus.inProgress:
        showDialog(
          barrierDismissible: false,
          useRootNavigator: false,
          context: context,
          builder: (BuildContext context) {
            return MessageDialog(
              title: AppLocalizations.of(context)?.loggingIn ?? '',
              content: Column(
                children: [
                  const CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      AppLocalizations.of(context)?.pleaseWait ?? '',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            );
          },
        );
        break;
      case RequestStatus.success:
        // ignore: avoid_print
        print('Success');
        break;
      case RequestStatus.failure:
        switch (state.email.errorType) {
          case ErrorType.empty:
            showDialog(
              barrierDismissible: false,
              useRootNavigator: false,
              context: context,
              builder: (BuildContext context) {
                return MessageDialog(
                  title: AppLocalizations.of(context)?.error ?? '',
                  content: Column(
                    children: [
                      Text(
                        state.email.error,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 60.0,
                        ),
                        child: RoundedButton(
                          overlaycolor: Colors.orange.shade400,
                          onPress: () => Navigator.of(context).pop(),
                          label: AppLocalizations.of(context)?.ok ?? '',
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
            break;
          default:
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
