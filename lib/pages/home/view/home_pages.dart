import 'package:coachboard/pages/halfcourt/view/halfcourt_page.dart';
import 'package:coachboard/pages/home/home.dart';
import 'package:coachboard/pages/login/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePages extends StatelessWidget {
  final GlobalKey<NavigatorState>? naviagtorKey;
  const HomePages({super.key, this.naviagtorKey});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        pageController.jumpToPage(
          state.currentPage.index,
        );
      },
      child: BlocBuilder<HomeBloc, HomeState>(builder: (
        context,
        state,
      ) {
        return PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            const HalfcourtPage(),
            const Text(
              'Magnet',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Plays',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            LoginRouter(
              naviagtorKey: naviagtorKey,
            ),
            const Text(
              'Full Court',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Free Hand',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        );
      }),
    );
  }
}
