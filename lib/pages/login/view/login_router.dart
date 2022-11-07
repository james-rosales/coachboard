import 'package:coachboard/pages/login/login.dart';
import 'package:coachboard/pages/register/view/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginRouter extends StatelessWidget {
  final GlobalKey<NavigatorState>? naviagtorKey;
  late final GoRouter _router;

  LoginRouter({super.key, this.naviagtorKey}) {
    _router = GoRouter(
      navigatorKey: naviagtorKey,
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: RegisterPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const RegisterPage();
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      backButtonDispatcher: _router.backButtonDispatcher,
    );
  }
}
