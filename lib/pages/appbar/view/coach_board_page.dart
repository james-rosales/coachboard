import 'package:coachboard/widgets/labeled_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../login/view/view.dart';
import '../bloc/bloc.dart';

class CoachBoardPage extends StatelessWidget {
  CoachBoardPage({
    super.key,
  });

  var controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoachBoardBloc>(
        create: (context) => CoachBoardBloc(CoachBoardState()),
        child: BlocBuilder<CoachBoardBloc, CoachBoardState>(
          builder: (context, state) {
            var bloc = context.read<CoachBoardBloc>();

            return Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size(double.infinity, 70),
                child: AppBar(
                  backgroundColor: const Color.fromARGB(255, 48, 48, 48),
                  title: const Text(
                    'Coach Board',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 211, 127, 2)),
                  ),
                  actions: [
                    Row(
                      children: [
                        InkWell(
                          child: const LabeledIconButton(
                            label: 'Full Court',
                            iconAction: Icons.circle,
                          ),
                          onTap: () {
                            bloc.add(ActionsPressed(0));
                            controller.jumpToPage(state.actionsIndex);
                          },
                        ),
                        InkWell(
                          child: const LabeledIconButton(
                            label: 'Free Hand',
                            iconAction: Icons.handshake,
                          ),
                          onTap: () {
                            bloc.add(ActionsPressed(1));
                            controller.jumpToPage(state.actionsIndex);
                          },
                        ),
                        InkWell(
                          child: const LabeledIconButton(
                            label: 'Plays',
                            iconAction: Icons.shopping_basket,
                          ),
                          onTap: () {
                            bloc.add(ActionsPressed(2));
                            controller.jumpToPage(state.actionsIndex);
                          },
                        ),
                        InkWell(
                          child: const LabeledIconButton(
                            label: 'Login',
                            iconAction: Icons.exit_to_app,
                          ),
                          onTap: () {
                            bloc.add(ActionsPressed(3));
                            controller.jumpToPage(state.actionsIndex);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: const [
                  Text('index 0'),
                  Text('index 1'),
                  Text('index 2'),
                  LoginPage(),
                ],
              ),
            );
          },
        ));
  }
}
