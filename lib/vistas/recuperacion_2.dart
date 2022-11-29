import 'package:flutter/material.dart';

class recuperacion_2 extends StatefulWidget {
  const recuperacion_2({Key? key}) : super(key: key);

  @override
  State<recuperacion_2> createState() => _recuperacion_2State();
}

class _recuperacion_2State extends State<recuperacion_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recuperacion"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _textTexto(),
            const SizedBox(height: 20),
            _textCodigo(),
            const SizedBox(height: 5),
            _inputCodigo(),
            const SizedBox(height: 20),
            _btnRecuperar(context),
            const SizedBox(height: 20),
            _btnAtras(context)
          ],
        ),
      ),
    );
  }

  Container _textTexto() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Ingrese el codigo enviado para restablecer su contraseña",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textCodigo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Codigo",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _inputCodigo() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Codigo",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _btnRecuperar(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/recuperacion_3');
        },
        child: const Text('RECUPERAR'),
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
          Navigator.pushReplacementNamed(context, '/recuperacion_1');
        },
        child: const Text('ATRAS'),
      ),
    );
  }
}
