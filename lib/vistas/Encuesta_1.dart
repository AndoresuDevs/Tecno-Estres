import 'package:flutter/material.dart';

class Encuesta_1 extends StatefulWidget {
  const Encuesta_1({Key? key}) : super(key: key);

  @override
  State<Encuesta_1> createState() => _Encuesta_1State();
}

class _Encuesta_1State extends State<Encuesta_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Encuestas"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Text('Selecciona para responder una encuesta',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17
              ),
            ),
            const SizedBox(height: 40),
            _btnEncuesta1(context),
            const SizedBox(height: 40),
            _btnEncuesta2(context),
            const SizedBox(height: 40),
            _btnEncuesta3(context),
            const SizedBox(height: 40),
            _btnSalir(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

  Container _btnEncuesta1(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        style: const ButtonStyle(),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/encuesta_1');
        },
        child: const Text('Encuesta 1'),
      ),
    );
  }

Container _btnEncuesta2(BuildContext context) {
  return Container(
    height: 40,
    margin: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width-30,
    child: ElevatedButton(
      style: const ButtonStyle(),
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/encuesta_1');
      },
      child: const Text('Encuesta 2'),
    ),
  );
}

Container _btnEncuesta3(BuildContext context) {
  return Container(
    height: 40,
    margin: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width-30,
    child: ElevatedButton(
      style: const ButtonStyle(),
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/encuesta_1');
      },
      child: const Text('Encuesta 3'),
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
