import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina non trovata!'),
          leading: const BackButton()
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '404',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ops, sei entrato in una sezione sconosciuta',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.home),
              label: const Text('Torna alla Home'),
              onPressed: () {
                context.go('/home_page'); // fallback sicuro alla home
              },
            ),
          ],
        ),
      ),
    );
  }
}
