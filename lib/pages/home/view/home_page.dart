import 'package:coachboard/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const route = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState()),
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: HomeAppBar(),
        ),
        body: HomePages(),
      ),
    );
  }
}
