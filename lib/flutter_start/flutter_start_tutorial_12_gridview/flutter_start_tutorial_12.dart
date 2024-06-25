import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/product_model.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial12 extends StatelessWidget {
  const FlutterStartTutorial12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        centerTitle:
            true, // Questo rende il testo del titolo centrato nell'AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Spiegazione di GridView
            sectionTitle("GridView"),
            const SizedBox(height: 10),
            explanationText(
              "GridView.builder: è un modo più efficiente per creare una vista a griglia in Flutter. "
              "Crea solo gli elementi che sono visibili sullo schermo e quando scorri, crea i nuovi elementi e scarta quelli vecchi. "
              "Questo è molto più efficiente in termini di memoria per liste grandi.",
            ),
            const SizedBox(height: 20),
            sectionTitle("Esempio di GridView"),
            const SizedBox(height: 10),
            // Esempio di GridView
            propertyExample(
              "GridView.builder",
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Il numero elementi nell'asse X.
                  childAspectRatio:
                      0.9, // Il rapporto tra l'asse trasversale e l'asse principale di ogni figlio.
                  crossAxisSpacing:
                      10, // Il numero di pixel logici tra ogni figlio lungo l'asse trasversale.
                  mainAxisSpacing:
                      10, // Il numero di pixel logici tra ogni figlio lungo l'asse principale.
                ),
                itemCount: products
                    .length, // Il numero totale di elementi nella lista.
                itemBuilder: (context, index) => ProductTile(products[
                    index]), // La funzione builder, chiamata per ogni elemento nella lista.
              ),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "Codice GridView.builder:",
              const Text('''
GridView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Il numero elementi nell'asse X.
    childAspectRatio: 0.9, // Il rapporto tra l'asse trasversale e l'asse principale di ogni figlio.
    crossAxisSpacing: 10, // Il numero di pixel logici tra ogni figlio lungo l'asse trasversale.
    mainAxisSpacing: 10, // Il numero di pixel logici tra ogni figlio lungo l'asse principale.
  ),
  itemCount: products.length, // Il numero totale di elementi nella lista.
  itemBuilder: (context, index) => ProductTile(products[index]), // La funzione builder, chiamata per ogni elemento nella lista.
),'''),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final ProductModel productModel;
  const ProductTile(this.productModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Metto una SizedBox per l'immagine, in modo da non creare overflow
        // causato dall'aspect ratio. Tutti i componenti di una griglia hanno
        // aspect ratio = 1.
        // Però in questo caso l'asse Y è più grande di quella X.
        SizedBox(height: 110, child: Image.network(productModel.imageUrl)),
        ListTile(
          title: Text(productModel.name),
          // Converto la variabile double in una stringa con 2 decimali
          subtitle: Text("${productModel.price.toStringAsFixed(2)} €"),
        )
      ],
    );
  }
}
