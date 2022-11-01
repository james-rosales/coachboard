import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final VoidCallback? onPress;

  const AppBarButton({
    super.key,
    this.icon,
    required this.label,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextButton(
        onPressed: () => onPress?.call(),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
