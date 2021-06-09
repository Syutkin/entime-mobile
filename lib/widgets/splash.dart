import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final String text;

  Splash({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widget(),
      ),
    );
  }

  Widget _widget() {
    if (text != null) {
      return Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      );
    } else {
      return CircularProgressIndicator();
    }
  }
}
