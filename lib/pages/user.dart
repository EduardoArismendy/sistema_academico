import 'package:flutter/material.dart';
import 'login.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  UserPageState createState() => UserPageState();
}

class UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Estudiante',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.grey),
            ),
            tooltip: 'Perfil de usuario',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            tooltip: 'Cerrar sesión',
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute<void>(
                  builder: (context) => const LoginPage(),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(100, 20, 100, 40),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/c/ce/Logo-ITM-01.png',
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
            child: Text(
              'Bienvenidx al Sistema Académico del ITM. Aquí podrás gestionar tus cursos, calificaciones y más.',
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
            child: Text(
              'Selecciona una opción del menú desplegable para comenzar a explorar las funcionalidades del sistema.',
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            alignment: Alignment.center,
            child: DropdownMenu(
              dropdownMenuEntries: <DropdownMenuEntry<int>>[
                DropdownMenuEntry<int>(value: 1, label: 'Perfil de Estudiante'),
                DropdownMenuEntry<int>(value: 2, label: 'Certificados'),
                DropdownMenuEntry<int>(value: 3, label: 'Calificaciones'),
                DropdownMenuEntry<int>(value: 4, label: 'Horario'),
                DropdownMenuEntry<int>(value: 5, label: 'Pago de Matrícula'),
                DropdownMenuEntry<int>(
                  value: 6,
                  label: 'Asesoría de Matrícula',
                ),
              ],
              width: 350,
              label: Text('Selecciona una opción...'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Text(
              'Escucha el nuevo podcast del ITM para estar al día con las últimas noticias y eventos académicos. Exclusivo para estudiantes, egresados y personal del ITM.',
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.play_circle_outline, size: 40),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Podcast ITM - Episodio 1',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                    subtitle: Text(
                      'En este episodio, exploramos las últimas noticias y eventos académicos del ITM, incluyendo entrevistas con estudiantes destacados y profesores. ¡No te lo pierdas!',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
