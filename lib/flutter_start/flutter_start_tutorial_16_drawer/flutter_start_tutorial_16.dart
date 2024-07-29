import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial16 extends StatelessWidget {
  const FlutterStartTutorial16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: body(),
      ),
      drawer: drawer(context),
    );
  }

  Widget drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sfondo.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Drawer tutorial",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start');
            },
            title: const Text("Home"),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: const Text("Profilo"),
            leading: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          sectionTitle("Drawer"),
          const SizedBox(height: 10),
          explanationText(
            "Il `Drawer` è un menu laterale che può essere scivolato da sinistra verso destra sullo schermo. "
            "Il `Drawer` può contenere qualsiasi widget, ma è consigliabile utilizzare il componente `Drawer()` standard di Flutter per la maggior parte delle applicazioni. "
            "Il `Drawer` è comunemente usato per la navigazione laterale e può includere intestazioni e una lista di opzioni.",
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempio di `Drawer` Standard"),
          const SizedBox(height: 10),
          propertyExample(
            "Drawer con `Drawer()`",
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Questo esempio mostra come utilizzare il widget `Drawer` di base con un header e una lista di opzioni.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.grey[200],
                  child: SizedBox(
                    height: 200, // Altezza definita per il Drawer
                    child: Drawer(
                      child: ListView(
                        padding: const EdgeInsets.all(0),
                        children: <Widget>[
                          const DrawerHeader(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/sfondo.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Drawer tutorial",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              // azione quando si preme "Home"
                            },
                            title: const Text("Home"),
                            leading: const Icon(Icons.home),
                          ),
                          ListTile(
                            onTap: () {
                              // azione quando si preme "Profilo"
                            },
                            title: const Text("Profilo"),
                            leading: const Icon(Icons.person),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          propertyExample(
            "Codice Drawer Standard:",
            const Text('''
Drawer(
  child: ListView(
    padding: const EdgeInsets.all(0),
    children: <Widget>[
      const DrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sfondo.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Drawer tutorial",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      ListTile(
        onTap: () {
          // azione quando si preme "Home"
        },
        title: const Text("Home"),
        leading: const Icon(Icons.home),
      ),
      ListTile(
        onTap: () {
          // azione quando si preme "Profilo"
        },
        title: const Text("Profilo"),
        leading: const Icon(Icons.person),
      ),
    ],
  ),
)'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempio di `Drawer` Personalizzato"),
          const SizedBox(height: 10),
          propertyExample(
            "Drawer Personalizzato con `Container()`",
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Questo esempio mostra come creare un `Drawer` personalizzato utilizzando un `Container` per uno stile completamente personalizzato.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.grey[200],
                  child: SizedBox(
                    height: 200, // Altezza definita per il Drawer
                    child: Drawer(
                      child: Container(
                        color: Colors.blueGrey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 80,
                              color: Colors.teal,
                              padding: const EdgeInsets.all(16),
                              child: const Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/propic.jpg'),
                                    radius: 30,
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    "Benvenuto",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                // azione quando si preme "Home"
                              },
                              title: const Text("Home"),
                              leading: const Icon(Icons.home),
                            ),
                            ListTile(
                              onTap: () {
                                // azione quando si preme "Profilo"
                              },
                              title: const Text("Profilo"),
                              leading: const Icon(Icons.person),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          propertyExample(
            "Codice Drawer Personalizzato:",
            const Text('''
Drawer(
  child: Container(
    color: Colors.blueGrey,
    child: Column(
      children: <Widget>[
        Container(
          height: 80,
          color: Colors.teal,
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/propic.jpg'),
                radius: 30,
              ),
              SizedBox(width: 16),
              Text(
                "Benvenuto",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {
            // azione quando si preme "Home"
          },
          title: const Text("Home"),
          leading: const Icon(Icons.home),
        ),
        ListTile(
          onTap: () {
            // azione quando si preme "Profilo"
          },
          title: const Text("Profilo"),
          leading: const Icon(Icons.person),
        ),
      ],
    ),
  ),
)'''),
          ),
        ],
      ),
    );
  }
}
