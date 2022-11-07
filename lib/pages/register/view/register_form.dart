import 'package:coachboard/pages/register/register.dart';
import 'package:coachboard/widgets/labeled_textfield.dart';
import 'package:coachboard/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
      var bloc = context.read<RegisterBloc>();
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Text(
              AppLocalizations.of(context)?.coachRegistration ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 40,
                fontFamily: 'CourierPrime',
                color: Color.fromARGB(
                  255,
                  211,
                  127,
                  2,
                ),
              ),
            ),
          ),
          LabeledTextfield(
            label: AppLocalizations.of(context)?.firstName ?? '',
            obscure: false,
            onChanged: (value) => bloc.add(
              FirstNameChanged(
                value,
              ),
            ),
          ),
          LabeledTextfield(
            label: AppLocalizations.of(context)?.lastName ?? '',
            obscure: false,
            onChanged: (value) => bloc.add(
              LastNameChanged(
                value,
              ),
            ),
          ),
          LabeledTextfield(
            label: AppLocalizations.of(context)?.middleName ?? '',
            obscure: false,
            onChanged: (value) {},
          ),
          LabeledTextfield(
            label: AppLocalizations.of(context)?.email ?? '',
            obscure: false,
            onChanged: (value) => bloc.add(
              EmailChanged(
                value,
              ),
            ),
          ),
          LabeledTextfield(
            label: AppLocalizations.of(context)?.password ?? '',
            obscure: true,
            onChanged: (value) => bloc.add(
              PasswordChanged(
                value,
              ),
            ),
          ),
          LabeledTextfield(
            label: AppLocalizations.of(context)?.confirmPassword ?? '',
            obscure: true,
            onChanged: (value) => bloc.add(
              ConfirmPasswordChanged(
                value,
              ),
            ),
          ),
          LabeledTextfield(
            label: AppLocalizations.of(context)?.teamName ?? '',
            obscure: false,
            onChanged: (value) => bloc.add(
              TeamNameChanged(
                value,
              ),
            ),
          ),
          RoundedButton(
            color: const Color.fromARGB(
              198,
              0,
              0,
              0,
            ),
            onPress: () => bloc.add(
              RegisterPressed(),
            ),
            label: AppLocalizations.of(context)?.register ?? '',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)?.backTo ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(
                    AppLocalizations.of(context)?.login ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                        255,
                        211,
                        127,
                        2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
