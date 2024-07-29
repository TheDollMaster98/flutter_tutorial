import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial15 extends StatelessWidget {
  const FlutterStartTutorial15({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // lnumero di tab da mostrare
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar e TabBarView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sectionTitle("TabBar e TabBarView"),
          const SizedBox(height: 10),
          explanationText(
            "TabBar e TabBarView vengono spesso utilizzati insieme per creare un'interfaccia a schede. \n"
            "- Il DefaultTabController è un widget conveniente che gestisce automaticamente la sincronizzazione tra TabBar e TabBarView. \n"
            "- Il TabController personalizzato può essere utilizzato quando si desidera avere un controllo più preciso sul comportamento delle schede, come la gestione degli eventi di cambio scheda o la sincronizzazione con altre parti dell'app.\n"
            "- Utilizzando il DefaultTabController, non è necessario creare manualmente un TabController.",
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempio di TabBar e TabBarView"),
          const SizedBox(height: 10),
          // Esempio di TabBar e TabBarView
          propertyExample(
            "TabBar e TabBarView",
            exampleTabBarView(),
          ),
          propertyExample(
            "Codice TabBar e TabBarView:",
            const Text('''
DefaultTabController(
  length: 3, // n° di tab da mostrare
  child: Scaffold(
    appBar: AppBar(
      title: const Text('TabBarView'),
      centerTitle: true,
      bottom: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home), text: 'Home'),
          Tab(icon: Icon(Icons.person), text: 'Profilo'),
          Tab(icon: Icon(Icons.settings), text: 'Impostazioni'),
        ],
      ),
    ),
    body: const TabBarView(
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

  // Esempio di TabBar e TabBarView
  Widget exampleTabBarView() {
    return SizedBox(
      height: 300,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false, // Rimuove la freccia del back
            title: const Text('App'),
            centerTitle: true,
            bottom: const TabBar(
              // Il controller è opzionale e serve a sincronizzare TabBar e TabBarView
              // di default è gestito automaticamente dal DefaultTabController
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  text: 'Home',
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Profilo',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  text: 'Impostazioni',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text("Home"),
              ),
              Center(
                child: Text("Profilo"),
              ),
              Center(
                child: Text("Impostazioni"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
