import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final String? text;

  const Splash({this.text, super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: _widget(),
        ),
      );

  Widget _widget() {
    if (text != null) {
      return Text(
        text!,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      );
    } else {
      return const CircularProgressIndicator();
    }
  }
}
