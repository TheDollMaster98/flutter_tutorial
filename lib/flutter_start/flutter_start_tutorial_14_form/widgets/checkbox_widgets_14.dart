import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked;
  bool? isCheckedTile = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (value) => setState(() {
                isChecked = value;
                print("Stato checkbox => $isChecked");
              }),
            ),
            const Text("Checkbox"),
          ],
        ),
        CheckboxListTile(
          tristate: true,
          value: isCheckedTile,
          title: const Text("Checkbox List Tile"),
          onChanged: (value) => setState(() {
            isCheckedTile = value;
            print("Stato checkbox => $isCheckedTile");
          }),
        )
      ],
    );
  }
}
