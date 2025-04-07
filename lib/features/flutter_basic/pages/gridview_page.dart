import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/model/product_model.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        centerTitle: true, // Questo rende il testo del titolo centrato nell'AppBar
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
                  childAspectRatio: 0.9, // Rapporto tra altezza e larghezza
                  crossAxisSpacing: 10, // Spaziatura orizzontale
                  mainAxisSpacing: 10,  // Spaziatura verticale
                ),
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ProductTile(products[index]), // Componente per ogni prodotto
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
    childAspectRatio: 0.9, // Rapporto tra altezza e larghezza
    crossAxisSpacing: 10, // Spaziatura orizzontale
    mainAxisSpacing: 10,  // Spaziatura verticale
  ),
  itemCount: products.length,
  itemBuilder: (context, index) => ProductTile(products[index]),
),'''),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget che rappresenta un singolo prodotto nella griglia
class ProductTile extends StatelessWidget {
  final ProductModel productModel;
  const ProductTile(this.productModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Metto una SizedBox per l'immagine, in modo da non creare overflow
        // causato dall'aspect ratio. Tutti i componenti di una griglia hanno
        // aspect ratio = 1. Però in questo caso l'asse Y è più grande.
        SizedBox(
          height: 110,
          child: Image.network(productModel.imageUrl),
        ),
        ListTile(
          title: Text(productModel.name),
          // Converto la variabile double in una stringa con 2 decimali
          subtitle: Text("${productModel.price.toStringAsFixed(2)} €"),
        )
      ],
    );
  }
}
