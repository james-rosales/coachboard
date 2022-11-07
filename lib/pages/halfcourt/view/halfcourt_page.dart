import 'package:coachboard/pages/halfcourt/halfcourt.dart';
import 'package:flutter/material.dart';

class HalfcourtPage extends StatelessWidget {
  const HalfcourtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          kToolbarHeight,
        ),
        child: HalfcourtAppBar(),
      ),
      body: HalfcourtForm(),
    );
  }
}
