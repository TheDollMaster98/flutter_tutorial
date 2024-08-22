import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial17 extends StatelessWidget {
  const FlutterStartTutorial17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(child: body()),
    );
  }
}

Widget body() => Text(
      "Empty.",
      style: TextStyle(fontSize: 32),
    );
