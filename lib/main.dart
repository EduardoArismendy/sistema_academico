import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Sistema académico',
      // Configuración de colores globales
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.getFont(
            'Work Sans',
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          titleLarge: GoogleFonts.getFont(
            'Lato',
            fontWeight: FontWeight.bold,
            textStyle: TextStyle(letterSpacing: 3),
          ),
          displayLarge: GoogleFonts.getFont(
            'Bricolage Grotesque',
            fontStyle: FontStyle.italic,
            color: const Color.fromARGB(255, 0, 73, 80),
          ),
        ),
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
