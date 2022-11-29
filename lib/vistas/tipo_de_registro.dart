import 'package:flutter/material.dart';

class TipoRegistro extends StatefulWidget {
  const TipoRegistro({Key? key}) : super(key: key);

  @override
  State<TipoRegistro> createState() => _TipoRegistroState();
}

class _TipoRegistroState extends State<TipoRegistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Elija su tipo de registro"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            miCardEstudiante(),
            const SizedBox(height: 10),
            miCardEgresado(),
            const SizedBox(height: 10),
            miCardDocente(),
            const SizedBox(height: 20),
            _btnAtras(context)
          ],
        ),
      ),
    );
  }

  Card miCardEstudiante() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Colors.green,
      child: Column(
        children:[
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('ESTUDIANTE', style: TextStyle(color: Colors.white, fontSize: 24),),
            subtitle: Text(
                'El ambiente perfecto para cualquier estudiante de nivel superior'),
            //leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MaterialButton(onPressed: () => {
                Navigator.pushReplacementNamed(context, '/registroEst1')
              }, child: const Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  Card miCardEgresado() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Colors.blue,
      child: Column(
        children:[
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('EGRESADO', style: TextStyle(color: Colors.white, fontSize: 24),),
            subtitle: Text(
                'El ambiente perfecto para cualquier profesionista que haya concluido su carrera universitaria'),
            //leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MaterialButton(onPressed: () => {
                Navigator.pushReplacementNamed(context, '/registroEgresado')
              }, child: const Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  Card miCardDocente() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Colors.brown,
      child: Column(
        children: [
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(
              'DOCENTE', style: TextStyle(color: Colors.white, fontSize: 24),),
            subtitle: Text(
                'El ambiente perfecto para docentes que actualmente imparten clases de nivel superior'),
            //leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MaterialButton(onPressed: () => {
                Navigator.pushReplacementNamed(context, '/registroDoc')
              }, child: Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  Container _btnAtras(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        style: const ButtonStyle(),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
        child: const Text('ATRAS'),
      ),
    );
  }
}
