import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterCommands extends StatelessWidget {
  const FlutterCommands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Comandi Avanzati'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Comandi di Base di Flutter"),
            const SizedBox(height: 10),
            explanationText(
              "Ecco i comandi principali per iniziare a lavorare con Flutter:",
            ),
            propertyExample(
              "Comandi di Flutter",
              const Text(
                '''
flutter doctor     // Controlla l'ambiente di sviluppo
flutter create     // Crea un nuovo progetto Flutter
flutter run        // Esegui l'applicazione su un dispositivo
flutter build      // Crea una build per Android/iOS/Web
flutter pub get    // Ottieni le dipendenze definite in pubspec.yaml
flutter pub upgrade // Aggiorna le dipendenze alla versione più recente
flutter clean      // Pulisce la cache del progetto, utile per risolvere problemi
flutter analyze    // Analizza il codice per trovare errori o avvisi
flutter test       // Esegui i test automatici definiti per il progetto
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("Comandi di Pubblicazione"),
            const SizedBox(height: 10),
            explanationText(
              "Questi comandi sono utili per preparare la tua app per la pubblicazione su App Store, Play Store o sul Web:",
            ),
            propertyExample(
              "Comandi di Pubblicazione",
              const Text(
                '''
flutter build apk           // Crea un APK per Android
flutter build appbundle     // Crea un AAB per Android (consigliato per il Play Store)
flutter build ios           // Crea una build per iOS
flutter build web           // Crea una build per il Web
flutter build windows       // Crea una build per Windows
flutter build macos         // Crea una build per macOS
flutter build linux         // Crea una build per Linux
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
