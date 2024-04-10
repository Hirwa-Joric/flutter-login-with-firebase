import 'package:flutter/material.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home page")
      ),
      body: Center(
        child: Text("welcome to the home page"),
      ),
    );
  }
}
