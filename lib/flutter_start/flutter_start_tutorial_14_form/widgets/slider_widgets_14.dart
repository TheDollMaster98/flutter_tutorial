import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double ralValue = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: ralValue,
      min: 0,
      max: 40000,
      // Valore fra i vari step:
      divisions: 1000,
      // Valore visualizzato:
      label: ralValue.toStringAsFixed(0),
      onChanged: (value) => setState(() => ralValue = value),
    );
  }
}
