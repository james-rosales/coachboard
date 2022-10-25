import 'package:go_router/go_router.dart';

import '../../register/view/register_page.dart';
import '../login.dart';
import 'package:coachboard/pages/home/home.dart';
import 'package:coachboard/widgets/labeled_textfield.dart';
import 'package:coachboard/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginBloc>();
    var homebloc = context.read<HomeBloc>();

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Text(
                AppLocalizations.of(context)?.coachLogin ?? '',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Color.fromARGB(255, 211, 127, 2)),
              ),
            ),
            LabeledTextfield(
              errorText: state.errorTextemail,
              label: AppLocalizations.of(context)?.email ?? '',
              onChanged: (value) => bloc.add(
                EmailChanged(value),
              ),
              obscure: false,
            ),
            LabeledTextfield(
              label: AppLocalizations.of(context)?.password ?? '',
              onChanged: (value) {},
              obscure: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)?.noaccountYet ?? '',
                  style: const TextStyle(fontSize: 20),
                ),
                TextButton(
                  onPressed: () => context.push(RegisterPage.route),
                  child: Text(
                    AppLocalizations.of(context)?.signup ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 211, 127, 2),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RoundedButton(
                onPress: () {},
                label: AppLocalizations.of(context)?.login ?? '',
              ),
            ),
          ],
        );
      },
    );
  }
}
