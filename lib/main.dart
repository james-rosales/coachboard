import 'package:coachboard/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'pages/login/view/view.dart';

void main() {
  runApp(const CoachBoard());
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: HomePage.route,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: LoginPage.route,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
  ],
);

class CoachBoard extends StatelessWidget {
  const CoachBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
            foregroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.orange,
            ),
          ),
        ),
        dialogTheme: const DialogTheme(
          titleTextStyle: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Aaargh',
            fontSize: 13,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          subtitle1: TextStyle(
            color: Colors.grey,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(
            255,
            59,
            58,
            58,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(
            255,
            59,
            58,
            58,
          ),
          titleTextStyle: TextStyle(
            fontFamily: 'CourierPrime',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
