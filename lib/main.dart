import 'package:flutter/material.dart';
import 'pages/Home.dart'; // Importar la pantalla Home desde la carpeta pages

// Punto de entrada de la aplicación Flutter
void main() {
  runApp(const MyApp());
}

// Widget principal de la app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema académico',
      // Configuración de colores globales
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF006D77), // Color base
          primary: const Color(0xFF006D77), // Color principal
          secondary: const Color(0xFFEFF6F9), // Color secundario
        ),
      ),
      // El widget Home es la pantalla inicial
      home: const Home(),
    );
  }
}
