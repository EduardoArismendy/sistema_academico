import 'package:flutter/material.dart';
import 'home.dart';

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
          'Sistema Académico',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(
          color: Colors.white, // Color de los íconos en la barra superior
        ),
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
              Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (context) => const Home()),
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
        ],
      ),
    );
  }
}
