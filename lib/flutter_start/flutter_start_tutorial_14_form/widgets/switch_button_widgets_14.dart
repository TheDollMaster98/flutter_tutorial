import 'package:flutter/material.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({super.key});

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool isSwitched = false;
  bool isSwitchedTile = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: isSwitched,
          onChanged: (value) => setState(
            () => isSwitched = value,
          ),
        ),
        SwitchListTile(
          value: isSwitchedTile,
          title: const Text("Switch List tile"),
          onChanged: (value) => setState(
            () => isSwitchedTile = value,
          ),
        )
      ],
    );
  }
}
