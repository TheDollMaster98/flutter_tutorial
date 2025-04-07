import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/cubit/radio_button_cubit.dart';

/// Widget completo con stato gestito da Cubit
class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioButtonCubit(),
      child: const RadioButtonView(),
    );
  }
}

/// Widget che contiene sia i Radio che i RadioListTile
class RadioButtonView extends StatelessWidget {
  const RadioButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Radio:"),
        // Ogni Radio ha lo stesso groupValue (stato attuale del Cubit)
        Row(
          children: [
            Radio<CardVariant>(
              value: CardVariant.basic,
              groupValue: context.watch<RadioButtonCubit>().state,
              onChanged: (value) =>
                  context.read<RadioButtonCubit>().selectVariant(value!),
            ),
            const Text("Basic"),
          ],
        ),
        Row(
          children: [
            Radio<CardVariant>(
              value: CardVariant.normal,
              groupValue: context.watch<RadioButtonCubit>().state,
              onChanged: (value) =>
                  context.read<RadioButtonCubit>().selectVariant(value!),
            ),
            const Text("Normal"),
          ],
        ),
        Row(
          children: [
            Radio<CardVariant>(
              value: CardVariant.pro,
              groupValue: context.watch<RadioButtonCubit>().state,
              onChanged: (value) =>
                  context.read<RadioButtonCubit>().selectVariant(value!),
            ),
            const Text("Pro"),
          ],
        ),
        const Text("Radio List tile:"),
        RadioListTile<CardVariant>(
          value: CardVariant.basic,
          title: const Text("Basic"),
          groupValue: context.watch<RadioButtonCubit>().state,
          onChanged: (value) =>
              context.read<RadioButtonCubit>().selectVariant(value!),
        ),
        RadioListTile<CardVariant>(
          value: CardVariant.normal,
          title: const Text("Normal"),
          groupValue: context.watch<RadioButtonCubit>().state,
          onChanged: (value) =>
              context.read<RadioButtonCubit>().selectVariant(value!),
        ),
        RadioListTile<CardVariant>(
          value: CardVariant.pro,
          title: const Text("Pro"),
          groupValue: context.watch<RadioButtonCubit>().state,
          onChanged: (value) =>
              context.read<RadioButtonCubit>().selectVariant(value!),
        ),
      ],
    );
  }
}
