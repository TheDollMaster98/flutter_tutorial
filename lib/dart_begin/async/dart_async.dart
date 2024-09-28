import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // Per lavorare con JSON

class AsyncPage extends StatelessWidget {
  const AsyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chiamate HTTP in Dart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Chiamate HTTP in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "Dart supporta pienamente la programmazione asincrona tramite il pacchetto `http`, "
              "utilizzato per effettuare richieste HTTP come GET, POST, PUT e DELETE. "
              "Il pacchetto `dart:convert` serve a lavorare con JSON per decodificare o serializzare dati.",
            ),
            const SizedBox(height: 20),

            // Funzione GET
            sectionTitle("Esempio GET"),
            const SizedBox(height: 10),
            explanationText(
              "Il metodo GET viene usato per recuperare dati da un server. Ecco come fare una richiesta GET in Dart.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Funzione GET",
              const Text(
                '''
Future<String> performHTTPRequest(String method, String urlPath) async {
  final url = Uri.https('jsonplaceholder.typicode.com', urlPath);
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load data');
  }
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Funzione POST
            sectionTitle("Esempio POST"),
            const SizedBox(height: 10),
            explanationText(
              "Il metodo POST viene utilizzato per inviare nuovi dati al server. In questo esempio, si crea un nuovo 'Todo'.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Funzione POST",
              const Text(
                '''
Future<String> performHTTPRequest(String method, String urlPath, {Map<String, dynamic>? body}) async {
  final url = Uri.https('jsonplaceholder.typicode.com', urlPath);
  final response = await http.post(
    url,
    body: body != null ? jsonEncode(body) : null,
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 201) {
    return response.body;
  } else {
    throw Exception('Failed to create data');
  }
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Funzione PUT
            sectionTitle("Esempio PUT"),
            const SizedBox(height: 10),
            explanationText(
              "Il metodo PUT aggiorna dati esistenti sul server. In questo esempio, si aggiorna un 'Todo'.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Funzione PUT",
              const Text(
                '''
Future<String> performHTTPRequest(String method, String urlPath, {Map<String, dynamic>? body}) async {
  final url = Uri.https('jsonplaceholder.typicode.com', urlPath);
  final response = await http.put(
    url,
    body: body != null ? jsonEncode(body) : null,
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to update data');
  }
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Funzione DELETE
            sectionTitle("Esempio DELETE"),
            const SizedBox(height: 10),
            explanationText(
              "Il metodo DELETE rimuove dati esistenti dal server. Ecco un esempio per eliminare un 'Todo'.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Funzione DELETE",
              const Text(
                '''
Future<String> performHTTPRequest(String method, String urlPath) async {
  final url = Uri.https('jsonplaceholder.typicode.com', urlPath);
  final response = await http.delete(url);

  if (response.statusCode == 200) {
    return 'Deleted successfully';
  } else {
    throw Exception('Failed to delete data');
  }
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Funzione HTTP generica + Spiegazione differenza fra le due funzioni
            sectionTitle("Quale funzione è più conveniente?"),
            explanationText(
              '''
`performHTTPRequest()` è una funzione generica per gestire più metodi HTTP (GET, POST, PUT, DELETE) in modo modulare. 
Offre flessibilità e riutilizzabilità, essendo facilmente estendibile a nuovi tipi di richieste.

`future()` è utile per sequenze di operazioni specifiche in cui si ha bisogno di un flusso controllato di chiamate, 
ma non è riutilizzabile come `performHTTPRequest()` in situazioni diverse o complesse.

**Quando usare l'una o l'altra:** 
- `performHTTPRequest()` è ideale quando si vuole modularità e flessibilità.
- `future()` si usa per scenari in cui una sequenza ben definita di chiamate asincrone è sufficiente.
              ''',
            ),
            const SizedBox(height: 20),

            // Classe Todo
            sectionTitle("Classe Todo"),
            explanationText(
                "La classe `Todo` rappresenta i dati provenienti da un servizio REST API in formato JSON. Ecco la classe con la funzione `fromJson` per deserializzare i dati."),
            const SizedBox(height: 10),
            propertyExample(
              "Classe Todo",
              const Text(
                '''
class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  // Metodo di fabbrica per deserializzare un oggetto JSON
  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    completed: json['completed'],
  );

  @override
  String toString() =>
      "Todo: userId=\$userId, id=\$id, title='\$title', completed=\$completed";
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
