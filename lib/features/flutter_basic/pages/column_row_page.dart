// features/flutter_basic/pages/column_row/column_row_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';
import 'package:flutter_tutorial/features/flutter_basic/cubit/column_row_cubit.dart';

class ColumnRowPage extends StatelessWidget {
  const ColumnRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ColumnRowCubit(),
      child: const _ColumnRowView(),
    );
  }
}

class _ColumnRowView extends StatelessWidget {
  const _ColumnRowView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column & Row'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: ColumnRowTutorialContent(),
      ),
    );
  }
}

// Separato per pulizia e riuso in testing/storybook se serve.
class ColumnRowTutorialContent extends StatelessWidget {
  const ColumnRowTutorialContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        sectionTitle("Widget Row"),
        const SizedBox(height: 10),
        explanationText("Il widget Row dispone i suoi figli in una riga orizzontale."),
        const SizedBox(height: 10),
        propertyExample(
          "Row normale",
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey.shade100,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Elemento 1", style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Text("Elemento 2", style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Text("Elemento 3", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        sectionTitle("Widget Column"),
        const SizedBox(height: 10),
        explanationText("Il widget Column dispone i suoi figli in una colonna verticale."),
        const SizedBox(height: 10),
        propertyExample(
          "Column normale",
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey.shade100,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Riga 1", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text("Riga 2", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text("Riga 3", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        sectionTitle("MainAxisAlignment"),
        explanationText(
          "La proprietà MainAxisAlignment controlla la posizione dei widget figli lungo l'asse principale dell'area disponibile.",
        ),
        const SizedBox(height: 10),
        _buildMainAxisExample("MainAxisAlignment.center", MainAxisAlignment.center),
        _buildMainAxisExample("MainAxisAlignment.start", MainAxisAlignment.start),
        _buildMainAxisExample("MainAxisAlignment.end", MainAxisAlignment.end),

        const SizedBox(height: 20),
        sectionTitle("CrossAxisAlignment"),
        explanationText("Controlla la posizione dei figli sull'asse trasversale."),
        const SizedBox(height: 10),
        _buildCrossAxisExample("CrossAxisAlignment.center", CrossAxisAlignment.center),
        _buildCrossAxisExample("CrossAxisAlignment.start", CrossAxisAlignment.start),
        _buildCrossAxisExample("CrossAxisAlignment.end", CrossAxisAlignment.end),
        _buildCrossAxisExample("CrossAxisAlignment.stretch", CrossAxisAlignment.stretch),
        _buildBaselineExample(),

        const SizedBox(height: 20),
        sectionTitle("TextAlign"),
        propertyExample(
          "TextAlign.center",
          const Text("Testo centrato", textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
        ),
        propertyExample(
          "TextAlign.start",
          const Text("Testo a sinistra", textAlign: TextAlign.start, style: TextStyle(fontSize: 20)),
        ),
        propertyExample(
          "TextAlign.end",
          const Text("Testo a destra", textAlign: TextAlign.end, style: TextStyle(fontSize: 20)),
        ),
        propertyExample(
          "TextAlign.justify",
          const Text("Testo giustificato", textAlign: TextAlign.justify, style: TextStyle(fontSize: 20)),
        ),

        const SizedBox(height: 20),
        sectionTitle("Expanded e Flexible"),
        explanationText(
          "Expanded occupa tutto lo spazio disponibile, mentre Flexible permette di controllare quanto occupare in proporzione.",
        ),
        propertyExample(
          "Esempio di Expanded",
          Container(
            height: 100,
            color: Colors.grey.shade200,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text("Expanded", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Container(
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text("Fixed", style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ),
        ),
        propertyExample(
          "Esempio di Flexible",
          Container(
            height: 100,
            color: Colors.grey.shade200,
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text("Flexible 2", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: Text("Flexible 1", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 20),
        sectionTitle("Wrap"),
        explanationText("Distribuisce i widget su più righe automaticamente."),
        const Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: [
            Chip(label: Text("Tag 1")),
            Chip(label: Text("Tag 2")),
            Chip(label: Text("Tag 3")),
            Chip(label: Text("Tag 4")),
          ],
        ),

        const SizedBox(height: 20),
        sectionTitle("Positioned (con Stack)"),
        explanationText(
          "Il widget Positioned è usato con Stack per posizionare un widget in maniera assoluta.",
        ),
        Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.blue),
            const Positioned(top: 10, right: 10, child: Icon(Icons.star, color: Colors.white)),
          ],
        ),
      ],
    );
  }

  Widget _buildMainAxisExample(String label, MainAxisAlignment alignment) {
    return propertyExample(
      label,
      Row(
        mainAxisAlignment: alignment,
        children: [
          coloredBox(Colors.blue),
          const SizedBox(width: 10),
          coloredBox(Colors.green),
          const SizedBox(width: 10),
          coloredBox(Colors.red),
        ],
      ),
    );
  }

  Widget _buildCrossAxisExample(String label, CrossAxisAlignment alignment) {
    return propertyExample(
      label,
      Row(
        crossAxisAlignment: alignment,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          coloredBox(Colors.blue),
          const SizedBox(width: 10),
          coloredBox(Colors.green),
          const SizedBox(width: 10),
          coloredBox(Colors.red),
        ],
      ),
    );
  }

  Widget _buildBaselineExample() {
    return propertyExample(
      "CrossAxisAlignment.baseline",
      const Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Blu", style: TextStyle(fontSize: 30, color: Colors.blue)),
          SizedBox(width: 10),
          Text("Verde", style: TextStyle(fontSize: 40, color: Colors.green)),
          SizedBox(width: 10),
          Text("Rosso", style: TextStyle(fontSize: 20, color: Colors.red)),
        ],
      ),
    );
  }
}
