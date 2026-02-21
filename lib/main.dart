import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sistema academico',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.getFont('Work Sans'),
          titleLarge: GoogleFonts.getFont(
            'Bricolage Grotesque', 
            fontWeight: FontWeight.bold,
            ),
          displayLarge:GoogleFonts.getFont(
            'Bricolage Grotesque', 
            fontStyle: FontStyle.italic,
            ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF006D77),
          primary: const Color.fromARGB(255, 0, 109, 119),
          secondary: const Color.fromARGB(221, 239, 246, 249),
      ),
      ),
      home: const MyHomePage(title: 'Sistema académico'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
