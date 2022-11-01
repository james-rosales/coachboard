import '../home.dart';
import 'package:coachboard/pages/login/view/view.dart';
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
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const Text('Full Court'),
          const Text('Free Hand'),
          const Text('Plays'),
          LoginRouter(),
          const Text('Half Court'),
          const Text('Magnet'),
        ],
      ),
    );
  }
}
