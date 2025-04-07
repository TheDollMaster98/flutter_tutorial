import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Metodo 1 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
        backgroundColor: Colors.purple.shade800,
        title: Text(
          'Immagini',
          style: TextStyle(
            // Metodo 2 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
            color: Colors.blue[100],
          ),
        ),
      ),
      body: const ImagesBody(),
    );
  }
}

// Corpo della pagina, separato per chiarezza
class ImagesBody extends StatefulWidget {
  const ImagesBody({super.key});

  @override
  State<ImagesBody> createState() => _ImagesBodyState();
}

class _ImagesBodyState extends State<ImagesBody> {
  late Future<Widget> _futureFileImage;

  @override
  void initState() {
    super.initState();
    _futureFileImage = _loadImageFromFile();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sectionTitle("Immagini da Network"),
          const SizedBox(height: 10),
          explanationText(
            "NetworkImage carica un'immagine da una sorgente online...",
          ),
          const SizedBox(height: 10),
          propertyExample(
            "Immagine da Network",
            const SizedBox(
              width: 200,
              height: 200,
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1605517021366-1b0393fdb50a?q=80&w=928&auto=format&fit=crop"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          _buildCode('''
Image( 
  image: NetworkImage(
    "https://link.com",
  ),
  fit: BoxFit.cover,
)'''),

          const SizedBox(height: 20),
          sectionTitle("Immagini Locali"),
          const SizedBox(height: 10),
          explanationText(
            "AssetImage carica un'immagine locale...",
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
          _buildCode('''
Image( 
  image: AssetImage(
    "assets/images/img.jpg",
  ),
  fit: BoxFit.cover,
)'''),

          const SizedBox(height: 20),
          sectionTitle("Immagini Locali con CircleAvatar"),
          const SizedBox(height: 10),
          explanationText(
            "CircleAvatar è utilizzato per mostrare immagini circolari...",
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
          _buildCode('''
CircleAvatar(
  radius: 50,
  backgroundImage: AssetImage("assets/images/img.jpg"),
)'''),

          const SizedBox(height: 20),
          sectionTitle("Immagini da File"),
          const SizedBox(height: 10),
          explanationText(
            "FileImage carica un'immagine da un file locale...",
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
          _buildCode('''
FutureBuilder(
  future: _loadImageFromFile(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return snapshot.data as Widget;
    } else {
      return const CircularProgressIndicator();
    }
  },
)

// Metodo:
Future<Widget> _loadImageFromFile() async {
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

          const SizedBox(height: 20),
          sectionTitle("Immagini con DecorationImage"),
          const SizedBox(height: 10),
          explanationText(
            "DecorationImage viene utilizzato per decorare un Container con un'immagine...",
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
                      "https://images.unsplash.com/photo-1605517021366-1b0393fdb50a?q=80&w=928&auto=format&fit=crop"),
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
          _buildCode('''
Container(
  width: 300,
  height: 200,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage("https://link.com"),
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.5),
        BlendMode.darken,
      ),
    ),
  ),
)'''),
        ],
      ),
    );
  }

  // Simula il caricamento di un'immagine da file
  Future<Widget> _loadImageFromFile() async {
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

  // Widget per visualizzare codice sorgente
  Widget _buildCode(String code) {
    return propertyExample("Codice:", Text(code));
  }
}
