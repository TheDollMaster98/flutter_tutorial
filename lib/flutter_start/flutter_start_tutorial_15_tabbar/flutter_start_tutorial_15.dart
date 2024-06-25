import 'package:flutter/material.dart';

class FlutterStartTutorial15 extends StatelessWidget {
  const FlutterStartTutorial15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text("ciao"),
      ),
    );
  }
}
