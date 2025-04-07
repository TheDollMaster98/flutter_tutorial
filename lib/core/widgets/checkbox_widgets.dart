import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/cubit/checkbox_cubit.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CheckboxCubit(),
      child: const _CheckBoxView(),
    );
  }
}

class _CheckBoxView extends StatelessWidget {
  const _CheckBoxView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckboxCubit, CheckboxState>(
      builder: (context, state) {
        final cubit = context.read<CheckboxCubit>();

        return Column(
          children: <Widget>[
            Row(
              children: [
                Checkbox(
                  tristate: true,
                  value: state.isChecked,
                  onChanged: (value) {
                    cubit.toggleCheck(value);
                    print("Stato checkbox => $value");
                  },
                ),
                const Text("Checkbox"),
              ],
            ),
            CheckboxListTile(
              tristate: true,
              value: state.isCheckedTile,
              title: const Text("Checkbox List Tile"),
              onChanged: (value) {
                cubit.toggleCheckTile(value);
                print("Stato checkbox => $value");
              },
            ),
          ],
        );
      },
    );
  }
}
