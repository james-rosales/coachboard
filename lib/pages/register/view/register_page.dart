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
        // Navigator.of(context).pop();
        break;
      case RequestStatus.failure:
        switch (state.errorType) {
          case ErrorType.empty:
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
                        state.errorText ?? '',
                        style: const TextStyle(fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
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
            break;
          default:
        }
        break;
      default:
    }
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
