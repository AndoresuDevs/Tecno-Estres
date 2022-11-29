import 'package:flutter/material.dart';

class recuperacion_4 extends StatefulWidget {
  const recuperacion_4({Key? key}) : super(key: key);

  @override
  State<recuperacion_4> createState() => _recuperacion_4State();
}

class _recuperacion_4State extends State<recuperacion_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recuperacion"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Text('¡Tu contraseña se ha reestablecido con exito! ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 40),
            _btn(context),
            const SizedBox(height: 40),
          ],
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
        child: const Text('Continuar'),
      ),
    );
  }
}