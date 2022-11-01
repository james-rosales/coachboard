import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({super.key, required this.content, required this.title});
  final String content;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 220,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              content,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: OutlinedButton(
                  child: const Text(
                    'OK',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
