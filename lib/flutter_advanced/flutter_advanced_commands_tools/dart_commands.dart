import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartCommands extends StatelessWidget {
  const DartCommands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart: Comandi Avanzati'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Comandi di Dart"),
            const SizedBox(height: 10),
            explanationText(
              "Ecco i comandi principali per lavorare con Dart:",
            ),
            propertyExample(
              "Comandi di Dart",
              const Text(
                '''
dart --version             // Controlla la versione di Dart 
                                        installata
dart create <nome>        // Crea un nuovo progetto Dart
dart run <file.dart>       // Esegui un file Dart
dart compile exe <file.dart>  // Compila un file Dart 
                                                    in un eseguibile
dart format .              // Format il codice Dart 
                                       nel progetto corrente
dart analyze               // Analizza il codice per trovare 
                                        errori o avvisi
dart pub get               // Ottieni le dipendenze definite 
                                        nel pubspec.yaml
dart pub upgrade           // Aggiorna le dipendenze 
                                            alla versione più recente
dart pub outdated          // Mostra le dipendenze che 
                                             hanno versioni più recenti
dart pub publish           // Pubblica il tuo pacchetto su 
                                             pub.dev
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
