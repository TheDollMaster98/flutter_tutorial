import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class PublicationSteps extends StatelessWidget {
  const PublicationSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pubblicazione dell\'App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Passaggi per la Pubblicazione su App Store"),
            const SizedBox(height: 10),
            explanationText(
              "Per pubblicare la tua app su App Store, segui questi passaggi:",
            ),
            propertyExample(
              "iOS Pubblicazione",
              const Text(
                '''
1. Crea un account Apple Developer.
2. Configura il tuo progetto per la distribuzione su iOS.
3. Esegui `flutter build ios` per creare una build di produzione.
4. Usa Xcode per archiviare e inviare la tua app ad App Store Connect.
5. Completa le informazioni necessarie in App Store Connect e invia la tua app per la revisione.
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("Passaggi per la Pubblicazione su Play Store"),
            const SizedBox(height: 10),
            explanationText(
              "Per pubblicare la tua app su Play Store, segui questi passaggi:",
            ),
            propertyExample(
              "Android Pubblicazione",
              const Text(
                '''
1. Crea un account Google Play Console.
2. Configura il tuo progetto per la distribuzione su Android.
3. Esegui `flutter build appbundle` per creare un bundle di produzione.
4. Carica il file .aab sulla Google Play Console.
5. Completa le informazioni necessarie sulla console e invia la tua app per la revisione.
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("Passaggi per la Pubblicazione sul Web"),
            const SizedBox(height: 10),
            explanationText(
              "Per pubblicare la tua app sul Web, segui questi passaggi:",
            ),
            propertyExample(
              "Web Pubblicazione",
              const Text(
                '''
1. Esegui `flutter build web` per creare una build per il Web.
2. Configura un server web (es. Firebase Hosting, Netlify, GitHub Pages).
3. Carica i file generati nella cartella `build/web` sul server scelto.
4. Verifica che la tua app funzioni correttamente online.
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
