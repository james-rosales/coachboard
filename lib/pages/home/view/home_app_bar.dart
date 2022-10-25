import 'package:coachboard/pages/home/home.dart';
import 'package:coachboard/pages/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: Text(AppLocalizations.of(context)?.coachBoard ?? '')),
            AppBarButton(
              onPress: () {
                bloc.add(const HomePagePressed(0));
              },
              icon: Icons.circle,
              label: AppLocalizations.of(context)?.fullCourt ?? '',
            ),
            AppBarButton(
              onPress: () {
                bloc.add(const HomePagePressed(1));
              },
              icon: Icons.handshake,
              label: AppLocalizations.of(context)?.freeHand ?? '',
            ),
            AppBarButton(
              onPress: () {
                bloc.add(const HomePagePressed(2));
              },
              icon: Icons.play_arrow,
              label: AppLocalizations.of(context)?.plays ?? '',
            ),
            AppBarButton(
              onPress: () {
                bloc.add(const HomePagePressed(3));
              },
              icon: Icons.exit_to_app,
              label: AppLocalizations.of(context)?.login ?? '',
            ),
            const Spacer(),
          ],
        ),
      );
    });
  }
}
