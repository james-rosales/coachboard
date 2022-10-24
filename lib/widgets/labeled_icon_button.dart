import 'package:flutter/material.dart';

class LabeledIconButton extends StatelessWidget {
  const LabeledIconButton({
    super.key,
    required this.label,
    required this.iconAction,
  });

  final IconData iconAction;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0),
      child: Column(
        children: [
          Icon(iconAction),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
