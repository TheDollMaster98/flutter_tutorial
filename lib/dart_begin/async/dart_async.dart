import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert; // Per lavorare con JSON

// Pagina principale che contiene tutte le sezioni
class AsyncPage extends StatelessWidget {
  const AsyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chiamate Asincrone'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AsyncIntro(), // Introduzione alle chiamate asincrone
            FutureAsyncAwait(), // Future e async/await
            StreamExample(), // Stream: flussi di dati asincroni
            IterableVsStream(), // Differenze tra Iterable e Stream
          ],
        ),
      ),
    );
  }
}

// Sezione di introduzione alle chiamate asincrone
class AsyncIntro extends StatelessWidget {
  const AsyncIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Introduzione alle chiamate asincrone",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 10),
        Text(
          '''
Programmazione Asincrona: Futures e Streams

- "async": Indica che una funzione è asincrona e restituisce una Future.
- "await": Attende il completamento di una Future prima di continuare.
- "Stream": Flusso di dati che trasmette valori in modo asincrono.
  Invece di restituire un singolo valore come una Future, uno Stream può emettere più valori nel tempo.
 - "yield*": Trasmette tutti i valori emessi da un altro Stream.

Generatori:
- "sync*": Generatore sincrono che restituisce un Iterable.
- "async*": Generatore asincrono che restituisce uno Stream.
  Gli Stream sono utili per sequenze di valori asincroni, come la lettura di dati da una sorgente esterna.

Iterable:
- Un oggetto che può essere iterato e produce una sequenza di valori immediatamente disponibili.
          ''',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

// Sezione Future con async/await
class FutureAsyncAwait extends StatelessWidget {
  const FutureAsyncAwait({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Future e Async/Await",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 10),
        Text(
          '''
Un Future rappresenta il risultato di un'operazione asincrona che può completarsi in futuro. 
Può avere successo o fallire e viene gestito con async/await.
          ''',
        ),
        SizedBox(height: 10),
        Text(
          '''
// Funzione asincrona che dimostra l'uso di richieste HTTP
void future() async {
  print('First step: Esecuzione iniziata');
  try {
    final getResponse = await performHTTPRequest('GET');
    print("Risposta GET: \$getResponse");
    final jsonResponse = convert.jsonDecode(getResponse);
    final todo = Todo.fromJson(jsonResponse);
    print("Risultato: \$todo");

    final postResponse = await performHTTPRequest('POST');
    print("Risposta POST: \$postResponse");
    
    final putResponse = await performHTTPRequest('PUT');
    print("Risposta PUT: \$putResponse");
    
    final deleteResponse = await performHTTPRequest('DELETE');
    print("Risposta DELETE: \$deleteResponse");
  } catch (e) {
    print("Errore: \$e");
  }
  print('Last step: Esecuzione terminata');
}

// Funzione per eseguire richieste HTTP
Future<String> performHTTPRequest(String method) async {
  final url = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  http.Response response;
  switch (method) {
    case 'GET':
      response = await http.get(url);
      break;
    case 'POST':
      response = await http.post(url, body: {'title': 'New Todo'});
      break;
    case 'PUT':
      response = await http.put(url, body: {'title': 'Updated Todo'});
      break;
    case 'DELETE':
      response = await http.delete(url);
      break;
    default:
      throw Exception('Metodo non supportato');
  }
  if (response.statusCode == 200 || response.statusCode == 201) {
    return response.body;
  } else {
    throw Exception('Request failed');
  }
}

// Classe Todo per rappresentare i dati
class Todo {
  final int userId, id;
  final String title;
  final bool completed;
  const Todo({required this.userId, required this.id, required this.title, required this.completed});

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
          style: TextStyle(fontFamily: 'monospace'),
        ),
        SizedBox(height: 10),
        Text(
          '''
**Quale delle due è più conveniente?**

`performHTTPRequest()` è più conveniente in termini di **riutilizzabilità** e **flessibilità**. Può essere chiamata da diverse funzioni e utilizzata per effettuare vari tipi di richieste HTTP. Questa funzione è **modulare**, il che facilita la manutenzione e l'espansione del codice.

`future()` è utile se hai bisogno di eseguire una serie di richieste HTTP in **sequenza** e vuoi gestirle in un'unica funzione. Tuttavia, se devi aggiungere nuove operazioni o gestire richieste parallele, potresti dover rivedere la sua struttura. In questo caso, usare una funzione come `performHTTPRequest()` in combinazione con altre tecniche (come `Future.wait()` per richieste parallele) sarebbe più efficiente.

**Quando usare l'una o l'altra:**

- Usa `performHTTPRequest()` se vuoi **modularità** e **flessibilità** per riutilizzare la stessa logica in più contesti.
- Usa `future()` quando hai bisogno di una sequenza di operazioni asincrone **specifica** e vuoi gestire facilmente il flusso di esecuzione.
          ''',
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

// Sezione sugli Stream
class StreamExample extends StatelessWidget {
  const StreamExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Stream: Flussi di Dati",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 10),
        Text(
          '''
Uno Stream è un flusso di dati asincrono che emette valori nel tempo. 
È utile per operazioni come la lettura di file o la ricezione di dati da una connessione di rete.
          ''',
        ),
        SizedBox(height: 10),
        Text(
          '''
// Funzione che genera numeri di Fibonacci come uno Stream<int>
Stream<int> fib(int n) async* {
  int _fib(int n) => n <= 2 ? 1 : _fib(n - 2) + _fib(n - 1);
  yield _fib(n);
  if (n > 2) {
    yield* fib(n - 1); // Stream ricorsivo
  }
}
          ''',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

// Sezione differenza tra Iterable e Stream
class IterableVsStream extends StatelessWidget {
  const IterableVsStream({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Iterable vs Stream",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 10),
        Text(
          '''
Un Iterable è una collezione di dati immediatamente disponibili, mentre uno Stream emette valori nel tempo in modo asincrono.
          ''',
        ),
        SizedBox(height: 10),
        Text(
          '''
// Funzione che genera un Iterable<int> della sequenza di Fibonacci
Iterable<int> fib2(int n) sync* {
  int _fib2(int n) => n <= 2 ? 1 : _fib2(n - 2) + _fib2(n - 1);
  yield _fib2(n);
  if (n > 2) {
    yield* fib2(n - 1); // Iterable ricorsivo
  }
}
          ''',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
