import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HalfcourtAppBar extends StatelessWidget {
  const HalfcourtAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 222, 222, 222),
      bottomOpacity: 0.0,
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.brush,
              color: Color.fromARGB(
                255,
                59,
                58,
                58,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.brush,
              color: Color.fromARGB(
                255,
                59,
                58,
                58,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
