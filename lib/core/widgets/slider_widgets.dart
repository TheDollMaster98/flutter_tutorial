import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/cubit/slider_cubit.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SliderCubit(),
      child: const _SliderView(),
    );
  }
}

class _SliderView extends StatelessWidget {
  const _SliderView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderCubit, double>(
      builder: (context, ralValue) {
        return Slider(
          value: ralValue,
          min: 0,
          max: 40000,
          // Valore fra i vari step:
          divisions: 1000,
          // Valore visualizzato:
          label: ralValue.toStringAsFixed(0),
          onChanged: (value) {
            // Aggiorna lo stato del cubit quando cambia il valore
            context.read<SliderCubit>().updateSlider(value);
          },
        );
      },
    );
  }
}
