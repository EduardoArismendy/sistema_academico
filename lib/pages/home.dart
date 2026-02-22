import 'package:flutter/material.dart';
import 'login.dart';

// Widget Home: pantalla inicial
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona estructura visual básica: barra superior y cuerpo
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'), // Título de la barra superior
        titleTextStyle: const TextStyle(
          color: Colors.white, // Color del texto del título
          fontSize: 20, // Tamaño del texto del título
          fontWeight: FontWeight.bold, // Negrita para el título
        ),

        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary, // Color principal
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            // Texto de bienvenida
            const Text(
              '¡Bienvenido! ¿Qué deseas hacer hoy?',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20), // Espacio entre texto y primer botón

            Container(
              padding: EdgeInsets.fromLTRB(100, 20, 100, 40),
              width: 350, // Ancho del contenedor (ajustado para la imagen)
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/c/ce/Logo-ITM-01.png',
              ),
            ), // Imagen de bienvenida
            const SizedBox(height: 20), // Espacio entre imagen y botones
            // Primer botón simple
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              icon: const Icon(Icons.play_arrow), // Icono a la izquierda
              label: const Text('Iniciar sesión'),
            ),
            const SizedBox(height: 16), // Espacio entre botones
            // Segundo botón
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.newspaper), // Icono a la izquierda
              label: const Text('Noticias institucionales'),
            ),
            const SizedBox(height: 16), // Espacio entre botones
            // tercer botón
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
