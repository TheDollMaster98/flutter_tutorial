import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';
import 'package:go_router/go_router.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: _buildBody(),
      ),
      drawer: _buildDrawer(context),
    );
  }

  /// Drawer standard visibile scorrendo da sinistra o con hamburger icon
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
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
            title: const Text("Home"),
            leading: const Icon(Icons.home),
            onTap: () {
              //Navigator.pushNamedAndRemoveUntil(context, '/home_page', (route) => true);
              //Navigator.pushNamed(context, '/flutter_basic');
              context.go('/flutter_basic');
            },
          ),
          ListTile(
            title: const Text("Profilo"),
            leading: const Icon(Icons.person),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  /// Corpo della pagina che spiega il Drawer
  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          sectionTitle("Drawer"),
          const SizedBox(height: 10),
          explanationText(
            "Il `Drawer` è un menu laterale che può essere aperto scorrendo da sinistra o cliccando l'icona hamburger.\n"
                "È comunemente usato per la navigazione laterale, e può contenere intestazioni, voci di menu, profili utente e molto altro.",
          ),
          const SizedBox(height: 20),

          sectionTitle("Esempio di `Drawer` Standard"),
          const SizedBox(height: 10),
          propertyExample(
            "Drawer con `Drawer()`",
            Container(
              color: Colors.grey[200],
              height: 200,
              child: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
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
                      title: const Text("Home"),
                      leading: const Icon(Icons.home),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text("Profilo"),
                      leading: const Icon(Icons.person),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          propertyExample(
            "Codice Drawer Standard:",
            const Text('''
Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
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
              Text("Drawer tutorial",
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
        title: Text("Home"),
        leading: Icon(Icons.home),
        onTap: () {},
      ),
      ListTile(
        title: Text("Profilo"),
        leading: Icon(Icons.person),
        onTap: () {},
      ),
    ],
  ),
)
'''),
          ),

          const SizedBox(height: 20),
          sectionTitle("Esempio di `Drawer` Personalizzato"),
          const SizedBox(height: 10),
          propertyExample(
            "Drawer Personalizzato con `Container()`",
            Container(
              color: Colors.grey[200],
              height: 200,
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
                        title: const Text("Home"),
                        leading: const Icon(Icons.home),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("Profilo"),
                        leading: const Icon(Icons.person),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
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
      children: [
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
              Text("Benvenuto",
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
          title: Text("Home"),
          leading: Icon(Icons.home),
          onTap: () {},
        ),
        ListTile(
          title: Text("Profilo"),
          leading: Icon(Icons.person),
          onTap: () {},
        ),
      ],
    ),
  ),
)
'''),
          ),
        ],
      ),
    );
  }
}
