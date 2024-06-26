import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/day_model.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial11 extends StatelessWidget {
  const FlutterStartTutorial11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true, //al posto di Center()
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("ListView"),
            const SizedBox(height: 10),
            explanationText(
              "ListView visualizza una lista di elementi. A differenza di Column, ListView supporta lo scrolling, "
              "il che significa che può visualizzare un numero illimitato di widget figli fintanto che ci sia spazio sullo schermo per scorrere.",
            ),
            const SizedBox(height: 20),
            sectionTitle("ListView semplice"),
            const SizedBox(height: 10),
            explanationText(
              "Utilizza ListView per creare una lista di widget. Questo metodo è più semplice ma meno efficiente perché crea tutti i widget figli in anticipo.",
            ),
            propertyExample(
              "ListView",
              SizedBox(
                height: 200,
                child: ListView(
                  children: List.generate(
                    days.length,
                    (index) => DayOfTheMonth(days[index]),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
ListView(
  children: List.generate(
    days.length,
    (index) => DayOfTheMonth(days[index]),
  ),
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("ListView.builder"),
            const SizedBox(height: 10),
            explanationText(
              "Utilizza ListView.builder per creare la lista di widget. Questo metodo è più efficiente perché crea solo i widget che sono attualmente visibili sullo schermo.",
            ),
            propertyExample(
              "ListView.builder",
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: days.length,
                  itemBuilder: (context, index) => DayOfTheMonth(days[index]),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
ListView.builder(
  itemCount: days.length,
  itemBuilder: (context, index) => DayOfTheMonth(days[index]),
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("ListView.separated"),
            const SizedBox(height: 10),
            explanationText(
              "Utilizza ListView.separated per creare una lista di widget con divisori tra gli elementi. "
              "Puoi personalizzare i divisori per aggiungere logica o stile.",
            ),
            propertyExample(
              "ListView.separated",
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: days.length,
                  itemBuilder: (context, index) => DayOfTheMonth(days[index]),
                  separatorBuilder: (context, index) => index % 2 == 0
                      ? const Divider(color: Colors.pink)
                      : const Divider(color: Colors.blue),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
ListView.separated(
  itemCount: days.length,
  itemBuilder: (context, index) => DayOfTheMonth(days[index]),
  separatorBuilder: (context, index) => index % 2 == 0
      ? const Divider(color: Colors.pink)
      : const Divider(color: Colors.blue),
),'''),
            ),
          ],
        ),
      ),
    );
  }
}

class DayOfTheMonth extends StatelessWidget {
  final DayModel model;
  const DayOfTheMonth(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    // le liste sono simili al componente Column
    // solo che è possibile scrollare in automatico
    // fa anche l'ottimizzazione grafica
    return ListTile(
      // per centrare il leading, creo una colonna che centra il tutto:
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.number.toString(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      title: Text(model.day.toString()),
      subtitle: Text(model.month.toString()),
      // trailing: Text("trailing"),
    );
  }
}
