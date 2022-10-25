import 'package:coachboard/pages/login/view/login_router.dart';

import '../home.dart';
import 'package:coachboard/pages/login/view/view.dart';
import 'package:coachboard/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) =>
          previous.currentPage != current.currentPage,
      listener: (context, state) {
        pageController.jumpToPage(state.currentPage.index);
      },
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Text('index 0'),
          Text('index 1'),
          Text('index 2'),
          LoginRouter(),
        ],
      ),
    );
  }
}
