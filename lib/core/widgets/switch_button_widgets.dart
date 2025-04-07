import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/cubit/switch_button_cubit.dart';

class SwitchButtonWidget extends StatelessWidget {
  const SwitchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchButtonCubit(),
      child: const _SwitchButtonView(),
    );
  }
}

class _SwitchButtonView extends StatelessWidget {
  const _SwitchButtonView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchButtonCubit, (bool, bool)>(
      builder: (context, state) {
        final isSwitched = state.$1;
        final isSwitchedTile = state.$2;

        return Column(
          children: [
            // Switch normale
            Switch(
              value: isSwitched,
              onChanged: (value) {
                context.read<SwitchButtonCubit>().toggleSwitch(value);
              },
            ),

            // Switch con titolo, simile a una ListTile
            SwitchListTile(
              value: isSwitchedTile,
              title: const Text("Switch List tile"),
              onChanged: (value) {
                context.read<SwitchButtonCubit>().toggleSwitchTile(value);
              },
            ),
          ],
        );
      },
    );
  }
}
