import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inicio"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Text('Selecciona tu nombre para responder una encuesta',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17
              ),
            ),
            const SizedBox(height: 40),
            _btnDocente(context),
            const SizedBox(height: 40),
            _btnEstudiante(context),
            const SizedBox(height: 40),
            _btnSalir(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Container _btnDocente(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        style: const ButtonStyle(),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/encuesta_1');
        },
        child: const Text('Dra. Valeria Paola Gonzales Dueñez'),
      ),
    );
  }
}

Container _btnEstudiante(BuildContext context) {
  return Container(
    height: 40,
    margin: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width-30,
    child: ElevatedButton(
      style: const ButtonStyle(),
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/encuesta_2');
      },
      child: const Text('Alvaro Lopez Margain'),
    ),
  );
}

//PLANTILLA BOTON
Container _btnSalir(BuildContext context) {
  return Container(
    height: 40,
    margin: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width-30,
    child: ElevatedButton(
      style: const ButtonStyle(),
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/');
      },
      child: const Text('Salir'),
    ),
  );
}
