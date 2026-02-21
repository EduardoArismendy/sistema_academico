import 'package:flutter/material.dart';

// Widget Home: pantalla inicial
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona estructura visual básica: barra superior y cuerpo
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'), // Título de la barra superior
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary, // Color principal
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto de bienvenida
            const Text(
              '¡Bienvenido! ¿Qué deseas hacer hoy?',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20), // Espacio entre texto y primer botón
            // Primer botón simple
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow), // Icono a la izquierda
              label: const Text('Empezar'),
            ),
            const SizedBox(height: 16), // Espacio entre botones
            // Segundo botón con icono
            // ElevatedButton.icon(
            //   onPressed: () {},
            //   icon: const Icon(Icons.star), // Icono a la izquierda
            //   label: const Text('Favorito'), // Texto del botón
            // ),
            // const SizedBox(height: 16), // Espacio entre botones

            // Tercer botón simple
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.newspaper), // Icono a la izquierda
              label: const Text('Noticias institucionales'),
            ),
            const SizedBox(height: 16), // Espacio entre botones
            // Cuarto botón simple
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.school), // Icono a la izquierda
              label: const Text('Programas universitarios'),
            ),
          ],
        ),
      ),
    );
  }
}
