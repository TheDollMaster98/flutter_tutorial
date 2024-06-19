import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial9 extends StatelessWidget {
  const FlutterStartTutorial9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Stack"),
            const SizedBox(height: 10),
            explanationText(
              "Stack permette di sovrapporre i widget uno sull'altro, simile al posizionamento relativo e assoluto in CSS. "
              "È utile per creare layout complessi con widget sovrapposti.",
            ),
            const SizedBox(height: 20),
            sectionTitle("Esempio Base di Stack"),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio Base di Stack",
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Stack(
  children: [
    Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    ),
    Container(
      width: 150,
      height: 150,
      color: Colors.green,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Posizionamento con Positioned"),
            const SizedBox(height: 10),
            explanationText(
              "Il widget Positioned consente di posizionare esattamente il widget figlio all'interno dello Stack. "
              "È utile per creare layout sovrapposti come icone di notifica.",
            ),
            propertyExample(
              "Esempio di Positioned",
              Stack(
                children: [
                  const Center(
                    child: Icon(
                      Icons.person,
                      size: 80,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 150,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Stack(
  children: [
    Center(
      child: Icon(
        Icons.person,
        size: 80,
      ),
    ),
    Positioned(
      top: 0,
      right: 150,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            "2",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Allineamento dei Figli nello Stack"),
            const SizedBox(height: 10),
            explanationText(
              "È possibile allineare i figli dello Stack utilizzando la proprietà alignment. "
              "Questa proprietà accetta valori di Alignment come topLeft, topRight, bottomLeft, bottomRight, center, ecc.",
            ),
            propertyExample(
              "Esempio di Allineamento dei Figli nello Stack",
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Stack(
  alignment: Alignment.center,
  children: [
    Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    ),
    Container(
      width: 150,
      height: 150,
      color: Colors.green,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Clip Behavior"),
            const SizedBox(height: 10),
            explanationText(
              "La proprietà clipBehavior dello Stack consente di controllare come i figli vengono tagliati quando escono dai limiti dello Stack. "
              "I valori possibili sono Clip.none, Clip.hardEdge, Clip.antiAlias, Clip.antiAliasWithSaveLayer.",
            ),
            propertyExample(
              "Esempio di Clip Behavior",
              Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 100,
                    left: 100,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.green.withOpacity(0.5),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 150,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Stack(
  clipBehavior: Clip.hardEdge,
  children: [
    Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    ),
    Positioned(
      top: 100,
      left: 100,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.green.withOpacity(0.5),
      ),
    ),
    Positioned(
      top: 150,
      left: 150,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red.withOpacity(0.5),
      ),
    ),
  ],
),'''),
            ),
          ],
        ),
      ),
    );
  }
}
