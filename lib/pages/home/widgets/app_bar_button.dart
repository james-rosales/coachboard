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
    return TextButton.icon(
      onPressed: () {
        onPress?.call();
      },
      icon: Icon(
        icon,
        color: Colors.white,
        size: 45,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
