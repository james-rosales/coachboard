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
      height: 100,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                label,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  errorText: errorText),
              obscureText: obscure,
              onChanged: (value) => onChanged(value),
            ),
          )
        ],
      ),
    );
  }
}
