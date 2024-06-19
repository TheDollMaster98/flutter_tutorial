import 'package:flutter/material.dart';

class WorkingInProgressPage extends StatelessWidget {
  const WorkingInProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coming Soon'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Page Not Found',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
