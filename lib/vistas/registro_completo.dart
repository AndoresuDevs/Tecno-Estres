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
            const SizedBox(height: 20),
            const Text('Empieza a agregar cosas aqui'),
            const SizedBox(height: 20),
            _text(),
            const SizedBox(height: 20),
            _btn(context),
            const SizedBox(height: 20),
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
        "Texto",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }



  //PLANTILLA BOTON
  Container _btn(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        style: const ButtonStyle(),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        child: const Text('CONTINUAR'),
      ),
    );
  }
}
