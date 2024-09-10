import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterTheory extends StatelessWidget {
  const FlutterTheory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Teoria'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Introduzione a Flutter
            sectionTitle("Introduzione a Flutter"),
            const SizedBox(height: 10),
            explanationText(
              "Flutter è un framework cross-platform lanciato nel 2017 per la creazione di applicazioni native su "
              "mobile, desktop e web. Compila il codice in linguaggi nativi come Dart per Android e iOS, e JavaScript/WebAssembly per il web. "
              "Supporta le linee guida Material You, Cupertino, e Fluent UI per un look and feel coerente con le piattaforme.",
            ),
            const SizedBox(height: 20),

            // Come funziona Flutter
            sectionTitle("Come funziona Flutter"),
            const SizedBox(height: 10),
            propertyExample(
              "Come funziona Flutter",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Utilizza il motore grafico SKIA (o Impeller nelle versioni recenti) per renderizzare le app.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Compilazione Just In Time (JIT): Utilizzata durante lo sviluppo per permettere l'uso dell'Hot Reload, "
                    "che consente di vedere i cambiamenti immediatamente senza dover ricompilare l'intera app.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Compilazione Ahead Of Time (AOT): Utilizzata per la pubblicazione, trasforma il codice Dart in codice nativo ottimizzato, "
                    "migliorando le prestazioni e riducendo i tempi di avvio dell'app.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Ciclo di vita di un componente
            sectionTitle("Ciclo di Vita di un Componente"),
            const SizedBox(height: 10),
            propertyExample(
              "Ciclo di Vita di un Componente",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- StatelessWidget: Segue un ciclo di vita semplice con il metodo build() per la costruzione della UI.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- StatefulWidget: Segue un ciclo di vita più complesso con metodi come:",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "  1. createState(): Crea lo stato iniziale del widget.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "  2. initState(): Inizializza lo stato del widget, chiamato una sola volta. (Esempio: può essere usato per inizializzare variabili, "
                    "fare una chiamata HTTP iniziale o impostare un listener).",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "  3. build(): Costruisce la UI, chiamato ogni volta che lo stato cambia. (Esempio: ogni volta che cambiamo una variabile di stato "
                    "attraverso setState(), il metodo build viene richiamato e aggiorna la grafica per riflettere le modifiche).",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "  4. dispose(): Libera le risorse utilizzate dal widget, chiamato quando il widget viene rimosso dall'albero. "
                    "(Esempio: cancella le chiamate HTTP che non hanno ancora ricevuto risposta, scollega il widget da un WebSocket per le chat, o rimuove listener).",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Struttura di un'app Flutter
            sectionTitle("Struttura di un'app Flutter"),
            const SizedBox(height: 10),
            propertyExample(
              "Struttura di un'app Flutter",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- MaterialApp: Configura l'app con temi, route, e locale.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Scaffold: Fornisce una struttura di base per lo schermo, con supporto per AppBar, Drawer, FloatingActionButton, e altro.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- AppBar: Una barra nella parte superiore dello schermo che mostra il titolo e altre azioni.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Body: Il contenuto principale della schermata, può contenere vari widget come ListView, GridView, e altro.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Stateless vs Stateful Widgets
            sectionTitle("Stateless vs Stateful Widgets"),
            const SizedBox(height: 10),
            propertyExample(
              "Stateless vs Stateful Widgets",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- StatelessWidget: Non mantiene stato interno. È ideale per UI statiche o quando il contenuto del widget non cambia nel tempo.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- StatefulWidget: Mantiene uno stato interno che può cambiare nel tempo, come un contatore o dati provenienti da una chiamata HTTP. "
                    "Il cambiamento di stato richiede l'uso di setState() per aggiornare la UI.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Virtual DOM
            sectionTitle("Virtual DOM"),
            const SizedBox(height: 10),
            explanationText(
              "Flutter utilizza un Virtual DOM per mantenere una copia in memoria della grafica sullo schermo, "
              "eseguendo operazioni di 'diffing' per aggiornare solo le parti che sono cambiate. Questo migliora significativamente le prestazioni.",
            ),
            const SizedBox(height: 20),

            // Componenti di Flutter
            sectionTitle("Componenti di Flutter"),
            const SizedBox(height: 10),
            propertyExample(
              "Componenti di Flutter",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. App & Dart: Include librerie Material e Cupertino, componenti, animazioni, e gestures.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "2. Engine: Comprende il motore di rendering (SKIA), runtime Dart, e schedulatore dei frame.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "3. Nativo: Gestisce i plugin nativi, la gestione dei thread, e l'impacchettamento dell'app.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Gestione dello Stato
            sectionTitle("Gestione dello Stato in Flutter"),
            const SizedBox(height: 10),
            propertyExample(
              "Gestione dello Stato in Flutter",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- setState(): Utilizzato per gestire stati locali all'interno di un StatefulWidget. È semplice ma non scalabile per applicazioni grandi.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- InheritedWidget: Permette di condividere lo stato tra widget senza dover passare dati manualmente.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Provider: Una libreria che semplifica la gestione dello stato, fornendo un'implementazione di InheritedWidget facile da usare.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Riverpod: Un'evoluzione di Provider, che offre una gestione dello stato più sicura e performante.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Bloc: Utilizza il pattern BLoC (Business Logic Component) per separare la logica di business dal livello di presentazione, ideale per applicazioni complesse.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- Redux: Pattern architetturale basato su azioni, riduttori e uno store centrale. Molto utile per applicazioni complesse con stato globale.",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "- GetX: Una soluzione tutto in uno per la gestione dello stato, navigazione e gestione delle dipendenze con una curva di apprendimento rapida.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Conclusione
            sectionTitle("Conclusione"),
            const SizedBox(height: 10),
            explanationText(
              "Flutter offre un potente framework per lo sviluppo di applicazioni cross-platform con un singolo codice sorgente. "
              "Grazie alle sue prestazioni elevate, al supporto per le animazioni e alle ampie librerie di componenti, è una scelta eccellente per sviluppatori che vogliono creare applicazioni moderne e performanti.",
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
