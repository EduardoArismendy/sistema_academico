import 'package:flutter/material.dart';

class ClasesPage extends StatefulWidget {
  const ClasesPage({super.key});

  @override
  State<ClasesPage> createState() => _ClasesPageState();
}

class _ClasesPageState extends State<ClasesPage> {
  int _pressCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clases')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Página de Clases',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _pressCount++;
                });
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                child: Text('Presionar'),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Presiones: $_pressCount',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
