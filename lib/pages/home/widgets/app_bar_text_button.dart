import 'package:flutter/material.dart';

class AppBarTextButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onPress;
  const AppBarTextButton(
      {super.key, required this.label, required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
      ),
      onPressed: () => onPress?.call,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Aaargh',
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
