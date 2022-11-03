import 'package:coachboard/pages/home/home.dart';
import 'package:coachboard/pages/home/widgets/app_bar_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

IconData _appbarIcon(isBool) {
  if (isBool) {
    return FontAwesomeIcons.circleHalfStroke;
  }

  return Icons.circle;
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AppBar(
          toolbarHeight: 70,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context)?.coachBoard ?? '',
                  overflow: TextOverflow.visible,
                ),
              ),
              AppBarButton(
                onPress: () => bloc.add(
                  FirstIconPressed(
                    state.firstIcon,
                  ),
                ),
                icon: _appbarIcon(state.firstIcon),
                label: state.firstIcon
                    ? AppLocalizations.of(context)?.halfCourt ?? ''
                    : AppLocalizations.of(context)?.fullCourt ?? '',
              ),
              AppBarButton(
                onPress: () => bloc.add(
                  SecondIconPressed(
                    state.secondIcon,
                  ),
                ),
                icon: state.secondIcon
                    ? FontAwesomeIcons.magnet
                    : FontAwesomeIcons.handshake,
                label: state.secondIcon
                    ? AppLocalizations.of(context)?.magnet ?? ''
                    : AppLocalizations.of(context)?.freeHand ?? '',
              ),
              AppBarButton(
                  onPress: () {
                    showDialog(
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            alignment: FractionalOffset.topCenter,
                            insetPadding: const EdgeInsets.only(
                              top: 90,
                              left: 120,
                            ),
                            backgroundColor: Colors.white,
                            elevation: 0,
                            child: Container(
                              height: 60,
                              width: 400,
                              color: const Color.fromARGB(
                                255,
                                59,
                                58,
                                58,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  AppBarTextButton(
                                    onPress: () {},
                                    label: AppLocalizations.of(context)
                                            ?.viewPlays ??
                                        '',
                                    icon: Icons.work_history_outlined,
                                  ),
                                  const VerticalDivider(
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                  AppBarTextButton(
                                    onPress: () {},
                                    label: AppLocalizations.of(context)
                                            ?.createPlay ??
                                        '',
                                    icon: Icons.brush,
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
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
