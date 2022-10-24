import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const AppBarButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
          ),
          Text(label),
        ],
      ),
    );
  }
}
