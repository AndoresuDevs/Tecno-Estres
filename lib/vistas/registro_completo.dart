import 'package:flutter/material.dart';

class RegistroCompletado extends StatefulWidget {
  const RegistroCompletado({Key? key}) : super(key: key);

  @override
  State<RegistroCompletado> createState() => _RegistroCompletadoState();
}

class _RegistroCompletadoState extends State<RegistroCompletado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bienvenido!"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Text('¡Tu registro se ha completado con exito! ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 50),
            _text(),
            const SizedBox(height: 40),
            _btnAvanzar(context),
            const SizedBox(height: 40),
            _btnSalir(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Container _text() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Te damos la bienvenida a IMAvision, empieza a apoyar a los estudiantes de ingeniería para ayudarlos a destacar en tu profesión",
        style: TextStyle(
            fontSize: 20
        ),
      ),
    );
  }

  Container _btnAvanzar(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        style: const ButtonStyle(),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/menu');
        },
        child: const Text('Avanzar a Inicio'),
      ),
    );
  }
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

