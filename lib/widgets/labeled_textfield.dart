import 'package:flutter/material.dart';

class LabeledTextfield extends StatelessWidget {
  const LabeledTextfield(
      {super.key,
      required this.label,
      this.errorText,
      required this.obscure,
      required this.onChanged});
  final String label;
  final String? errorText;
  final bool obscure;
  final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 120,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                label,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 10),
            child: TextFormField(
              obscureText: obscure,
              onChanged: (value) => onChanged(value),
            ),
          )
        ],
      ),
    );
  }
}
