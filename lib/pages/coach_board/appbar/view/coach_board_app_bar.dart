import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoachBordAppBar extends StatelessWidget {
  const CoachBordAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          'Coach Board',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color.fromARGB(255, 211, 127, 2)),
        ),
      ]),
      actions: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.circle),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.handshake),
              onPressed: () {},
            ),
          ],
        ),
        Text(
          'awkjdwajkdhwa',
        ),
        Text(
          'wdwdwd',
        ),
      ],
    );
  }
}
