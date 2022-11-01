import 'package:coachboard/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context)?.coachBoard ?? '',
                ),
              ),
              AppBarButton(
                onPress: () => bloc.add(
                  FirstIconPressed(
                    state.firstIcon,
                  ),
                ),
                icon: state.firstIcon
                    ? Icons.circle
                    : FontAwesomeIcons.circleHalfStroke,
                label: state.firstIcon
                    ? AppLocalizations.of(context)?.fullCourt ?? ''
                    : AppLocalizations.of(context)?.halfCourt ?? '',
              ),
              AppBarButton(
                onPress: () => bloc.add(
                  SecondIconPressed(
                    state.secondIcon,
                  ),
                ),
                icon: state.secondIcon
                    ? Icons.handshake
                    : FontAwesomeIcons.magnet,
                label: state.secondIcon
                    ? AppLocalizations.of(context)?.freeHand ?? ''
                    : AppLocalizations.of(context)?.magnet ?? '',
              ),
              AppBarButton(
                  // onPress: () => bloc.add(const HomePagePressed(2)),
                  icon: FontAwesomeIcons.basketball,
                  label: AppLocalizations.of(context)?.plays ?? ''),
              AppBarButton(
                  onPress: () => bloc.add(const FourthIconPressed()),
                  icon: FontAwesomeIcons.rightToBracket,
                  label: AppLocalizations.of(context)?.login ?? ''),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
