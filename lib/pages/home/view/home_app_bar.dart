import 'package:coachboard/pages/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: Text(AppLocalizations.of(context)?.coachBoard ?? '')),
          AppBarButton(
            icon: Icons.circle,
            label: AppLocalizations.of(context)?.fullCourt ?? '',
          ),
          AppBarButton(
            icon: Icons.circle,
            label: AppLocalizations.of(context)?.freeHand ?? '',
          ),
          AppBarButton(
            icon: Icons.circle,
            label: AppLocalizations.of(context)?.plays ?? '',
          ),
          AppBarButton(
            icon: Icons.circle,
            label: AppLocalizations.of(context)?.login ?? '',
          ),
          Spacer(),
        ],
      ),
    );
  }
}
