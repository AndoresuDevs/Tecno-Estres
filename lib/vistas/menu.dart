import 'package:flutter/material.dart';
import 'package:tecno_estres/vistas/inicio.dart';
import 'package:tecno_estres/vistas/notificaciones.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<Menu> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Inicio(),
    Icon(
      Icons.business,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Notificacion(),
    Icon(
      Icons.account_box,
      size: 150,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMAvision'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Mi camino',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Laboral',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Foro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}