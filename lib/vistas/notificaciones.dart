import 'package:flutter/material.dart';


class Notificacion extends StatefulWidget {
  const Notificacion({Key? key}) : super(key: key);

  @override
  _NotificacionesList createState() => _NotificacionesList();
}
class _NotificacionesList extends State<Notificacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notificaciones'),),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          ListTile( title: Text("Mensaje"),subtitle: Text("JUAN FRANCISCO: 'Como le hiciste en la actividad 2?'"),leading: Icon(Icons.message)),
          ListTile( title: Text("Asignacion"),subtitle: Text("ASIGNACION: Te han asignado encuesta 'Estres en pandemia'"), leading: Icon(Icons.assignment)),
          ListTile( title: Text("Foro"),subtitle: Text("ALEXIS TE HA MENCIONADO EN 'Dudas': '¿Donde se revisan las encuestas contestadas?'."), leading: Icon(Icons.group)),
          ListTile( title: Text("Foro"),subtitle: Text("JUAN TE HA MENCIONADO EN 'Admins': 'Creo que es momento de lanzar la nueva encuesta'."), leading: Icon(Icons.group))
        ],
      ),
    );
  }
}