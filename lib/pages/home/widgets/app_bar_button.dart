import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final VoidCallback? onPress;
  final Color overlayColor;

  const AppBarButton({
    super.key,
    this.icon,
    required this.label,
    this.onPress,
    required this.overlayColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              overlayColor,
            ),
          ),
          onPressed: () => onPress?.call(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
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
      ),
    );
  }
}
