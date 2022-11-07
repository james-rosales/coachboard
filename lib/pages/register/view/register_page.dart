import 'package:coachboard/models/result/result.dart';
import 'package:coachboard/models/text_field_input/text_field_input.dart';
import 'package:coachboard/pages/register/register.dart';
import 'package:coachboard/widgets/message_dialog.dart';
import 'package:coachboard/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterPage extends StatelessWidget {
  static const route = '/register';

  const RegisterPage({
    super.key,
  });
  void listener(BuildContext context, RegisterState state) {
    switch (state.requestStatus) {
      case RequestStatus.inProgress:
        showDialog(
          barrierDismissible: false,
          useRootNavigator: false,
          context: context,
          builder: (BuildContext context) {
            return MessageDialog(
              title: AppLocalizations.of(context)?.createAccount ?? '',
              content: Column(
                children: [
                  const CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      AppLocalizations.of(context)?.pleaseWait ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
        break;
      case RequestStatus.success:
        // Navigator.of(context).pop();
        break;
      case RequestStatus.failure:
        switch (state.firstName.errorType) {
          case ErrorType.empty:
            _showErrorMessage(context, 'First name must not be empty');
            return;
          default:
        }
        switch (state.lastName.errorType) {
          case ErrorType.empty:
            _showErrorMessage(context, 'Last name must not be empty');
            return;
          default:
        }

        switch (state.email.errorType) {
          case ErrorType.empty:
            _showErrorMessage(context, 'Email must not be empty');
            return;
          default:
        }
        switch (state.email.errorType) {
          case ErrorType.format:
            _showErrorMessage(context, 'Invalid email address');
            return;
          default:
        }
        switch (state.password.errorType) {
          case ErrorType.empty:
            _showErrorMessage(context, 'Password must not be empty');
            return;
          default:
        }

        switch (state.confirmpassword.errorType) {
          case ErrorType.format:
            _showErrorMessage(context, 'Password does not match');
            return;
          default:
        }

        switch (state.teamname.errorType) {
          case ErrorType.empty:
            _showErrorMessage(context, 'Team name must not be empty');
            return;
          default:
        }
        return;
      default:
    }
  }

  void _showErrorMessage(BuildContext context, String errorText) {
    showDialog(
      barrierDismissible: false,
      useRootNavigator: false,
      context: context,
      builder: (BuildContext context) {
        return MessageDialog(
          title: AppLocalizations.of(context)?.notice ?? '',
          content: Column(
            children: [
              Text(
                errorText,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 60.0,
                ),
                child: RoundedButton(
                  onPress: () => Navigator.of(context).pop(),
                  label: AppLocalizations.of(context)?.ok ?? '',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => RegisterBloc(RegisterState()),
      child: Builder(
        builder: (context) {
          return BlocListener<RegisterBloc, RegisterState>(
            listener: (context, state) => listener(context, state),
            child: const Scaffold(
              body: SingleChildScrollView(
                child: RegisterForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
