import 'package:coachboard/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const route = '/home';
  final GlobalKey<NavigatorState>? naviagtorKey = GlobalKey();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        HomeState(),
      ),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            70,
          ),
          child: HomeAppBar(
            naviagtorKey: naviagtorKey,
          ),
        ),
        body: HomePages(
          naviagtorKey: naviagtorKey,
        ),
      ),
    );
  }
}
