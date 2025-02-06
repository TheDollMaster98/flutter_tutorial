import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial5 extends StatelessWidget {
  const FlutterStartTutorial5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Immagini'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Immagini da Network"),
            const SizedBox(height: 10),
            explanationText(
              "NetworkImage carica un'immagine da una sorgente online. In questo caso, l'URL dell'immagine è fornito. "
              "BoxFit.cover determina come l'immagine dovrebbe essere ridimensionata per adattarsi al suo box. "
              "In questo caso, l'immagine coprirà tutto il box, potenzialmente perdendo parte dell'immagine per evitare di distorcere l'immagine.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Immagine da Network",
              const SizedBox(
                width: 200,
                height: 200,
                child: Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1605517021366-1b0393fdb50a?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Image( 
  image: NetworkImage(
    "https://link.com",
  ),
  fit: BoxFit.cover,
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Immagini Locali"),
            const SizedBox(height: 10),
            explanationText(
              "AssetImage carica un'immagine locale. È possibile specificare il percorso dell'immagine nella directory degli asset dell'applicazione.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Immagine Locale",
              const SizedBox(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage("assets/images/propic.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Image( 
  image: AssetImage(
    "assets/images/img.jpg",
  ),
  fit: BoxFit.cover,
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Immagini Locali con CircleAvatar"),
            const SizedBox(height: 10),
            explanationText(
              "CircleAvatar è utilizzato per mostrare immagini circolari. "
              "È possibile impostare un'immagine di sfondo con backgroundImage. "
              "Utilizzare sempre backgroundImage invece di foregroundImage per garantire un fallback appropriato.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Immagine Locale con CircleAvatar",
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/propic.jpg"),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
CircleAvatar(
  radius: 50,
  backgroundImage: AssetImage("assets/images/img.jpg"),
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Immagini da File"),
            const SizedBox(height: 10),
            explanationText(
              "FileImage carica un'immagine da un file locale. È necessario fornire un oggetto File che punta al percorso dell'immagine.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Immagine da File",
              FutureBuilder(
                future: _loadImageFromFile(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return snapshot.data as Widget;
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
FutureBuilder(
  future: _loadImageFromFile(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
    return snapshot.data as Widget;
    } else {
      return const CircularProgressIndicator();
    }
  },
),
              
              
Future<Widget> _loadImageFromFile() async {
  // Simuliamo il caricamento di un'immagine da un file
  // Sostituisci questa parte con il caricamento reale da un file
  await Future.delayed(const Duration(seconds: 2));
  return const SizedBox(
    width: 200,
    height: 200,
    child: Image(
      image: AssetImage("assets/images/img.jpg"),
      fit: BoxFit.cover,
    ),
  );
}'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Immagini con DecorationImage"),
            const SizedBox(height: 10),
            explanationText(
              "DecorationImage viene utilizzato per decorare un Container con un'immagine di sfondo. È possibile specificare come l'immagine deve adattarsi al Container utilizzando BoxFit e applicare filtri di colore.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Immagine con DecorationImage",
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage(
                        "https://images.unsplash.com/photo-1605517021366-1b0393fdb50a?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withAlpha((0.5 * 255).toInt()),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Container(
  width: 300,
  height: 200,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
        "https://link.com"
      ),
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.5),
        BlendMode.darken,
      ),
    ),
  ),
),'''),
            ),
          ],
        ),
      ),
    );
  }

  Future<Widget> _loadImageFromFile() async {
    // Simuliamo il caricamento di un'immagine da un file
    // Sostituisci questa parte con il caricamento reale da un file
    await Future.delayed(const Duration(seconds: 2));
    return const SizedBox(
      width: 200,
      height: 200,
      child: Image(
        image: AssetImage("assets/images/propic.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }
}
