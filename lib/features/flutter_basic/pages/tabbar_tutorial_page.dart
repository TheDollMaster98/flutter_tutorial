import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Numero di tab da mostrare
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar e TabBarView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildBody(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sectionTitle("TabBar e TabBarView"),
          const SizedBox(height: 10),
          explanationText(
            "TabBar e TabBarView vengono spesso utilizzati insieme per creare un'interfaccia a schede.\n"
                "- Il DefaultTabController è un widget conveniente che gestisce automaticamente la sincronizzazione tra TabBar e TabBarView.\n"
                "- Il TabController personalizzato può essere utilizzato per un controllo più preciso sulle schede.\n"
                "- Con DefaultTabController non è necessario dichiarare un TabController separato.",
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempio di TabBar e TabBarView"),
          const SizedBox(height: 10),
          propertyExample(
            "TabBar e TabBarView",
            _exampleTabBarView(),
          ),
          propertyExample(
            "Codice TabBar e TabBarView:",
            const Text('''
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: Text('TabBarView'),
      centerTitle: true,
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home), text: 'Home'),
          Tab(icon: Icon(Icons.person), text: 'Profilo'),
          Tab(icon: Icon(Icons.settings), text: 'Impostazioni'),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        Center(child: Text('Home')),
        Center(child: Text('Profilo')),
        Center(child: Text('Impostazioni')),
      ],
    ),
  ),
),'''),
          ),
        ],
      ),
    );
  }

  Widget _exampleTabBarView() {
    return SizedBox(
      height: 300,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('App'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: Colors.white),
                  text: 'Home',
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Colors.white),
                      SizedBox(width: 16),
                      Text(
                        'Profilo',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Tab(
                  icon: Icon(Icons.settings, color: Colors.white),
                  text: 'Impostazioni',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Home")),
              Center(child: Text("Profilo")),
              Center(child: Text("Impostazioni")),
            ],
          ),
        ),
      ),
    );
  }
}
