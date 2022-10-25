import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPress;

  const AppBarButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              onPress?.call();
            },
            icon: Icon(icon),
          ),
          Text(label),
        ],
      ),
    );
  }
}
