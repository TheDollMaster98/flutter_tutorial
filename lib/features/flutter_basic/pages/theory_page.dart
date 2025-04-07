import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';
import 'package:flutter_tutorial/features/flutter_basic/cubit/theory_cubit.dart';

class TheoryPage extends StatelessWidget {
  const TheoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TheoryCubit(),
      child: const _TheoryView(),
    );
  }
}

class _TheoryView extends StatelessWidget {
  const _TheoryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teoria'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: TheoryContent(),
      ),
    );
  }
}

class TheoryContent extends StatelessWidget {
  const TheoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        sectionTitle("Introduzione a Flutter"),
        const SizedBox(height: 10),
        explanationText(
          "Flutter è un framework cross-platform lanciato nel 2017 per la creazione di applicazioni native su "
              "mobile, desktop e web. Compila il codice in linguaggi nativi come Dart per Android e iOS, "
              "e JavaScript/WebAssembly per il web. Supporta le linee guida Material You, Cupertino, e Fluent UI.",
        ),

        const SizedBox(height: 20),
        sectionTitle("Come funziona Flutter"),
        const SizedBox(height: 10),
        propertyExample(
          "Come funziona Flutter",
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("- Utilizza SKIA o Impeller per il rendering grafico.", style: TextStyle(fontSize: 14)),
              Text("- Compilazione JIT: per Hot Reload in sviluppo.", style: TextStyle(fontSize: 14)),
              Text("- Compilazione AOT: per performance in produzione.", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),

        const SizedBox(height: 20),
        sectionTitle("Ciclo di Vita di un Componente"),
        const SizedBox(height: 10),
        propertyExample(
          "Ciclo di Vita",
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("- StatelessWidget: solo metodo build().", style: TextStyle(fontSize: 14)),
              Text("- StatefulWidget: createState, initState, build, dispose.", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),

        const SizedBox(height: 20),
        sectionTitle("Struttura di un'app Flutter"),
        const SizedBox(height: 10),
        propertyExample(
          "Struttura base",
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("- MaterialApp: setup globale.", style: TextStyle(fontSize: 14)),
              Text("- Scaffold: layout schermata.", style: TextStyle(fontSize: 14)),
              Text("- AppBar: barra superiore.", style: TextStyle(fontSize: 14)),
              Text("- Body: contenuto principale.", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),

        const SizedBox(height: 20),
        sectionTitle("Stateless vs Stateful Widgets"),
        const SizedBox(height: 10),
        propertyExample(
          "Confronto",
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("- Stateless: UI statica.", style: TextStyle(fontSize: 14)),
              Text("- Stateful: stato variabile con setState().", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),

        const SizedBox(height: 20),
        sectionTitle("Virtual DOM"),
        const SizedBox(height: 10),
        explanationText(
          "Flutter usa un Virtual DOM per aggiornare solo i widget modificati in modo efficiente.",
        ),

        const SizedBox(height: 20),
        sectionTitle("Componenti di Flutter"),
        const SizedBox(height: 10),
        propertyExample(
          "Layer architetturali",
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1. App & Dart", style: TextStyle(fontSize: 14)),
              Text("2. Engine (SKIA / Impeller)", style: TextStyle(fontSize: 14)),
              Text("3. Nativo: plugin, canali, ecc.", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),

        const SizedBox(height: 20),
        sectionTitle("Gestione dello Stato in Flutter"),
        const SizedBox(height: 10),
        propertyExample(
          "Stato e librerie",
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("- setState()", style: TextStyle(fontSize: 14)),
              Text("- InheritedWidget", style: TextStyle(fontSize: 14)),
              Text("- Provider", style: TextStyle(fontSize: 14)),
              Text("- Riverpod", style: TextStyle(fontSize: 14)),
              Text("- Bloc / Cubit", style: TextStyle(fontSize: 14)),
              Text("- Redux", style: TextStyle(fontSize: 14)),
              Text("- GetX", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),

        const SizedBox(height: 20),
        sectionTitle("Conclusione"),
        const SizedBox(height: 10),
        explanationText(
          "Flutter è moderno, veloce e potente. Con una buona gestione dello stato, "
              "permette di sviluppare app scalabili ed efficienti su più piattaforme.",
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
