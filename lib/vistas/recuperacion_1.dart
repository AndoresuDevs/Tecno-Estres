import 'package:flutter/material.dart';

class recuperacion_1 extends StatefulWidget {
  const recuperacion_1({Key? key}) : super(key: key);

  @override
  State<recuperacion_1> createState() => _recuperacion_1State();
}

class _recuperacion_1State extends State<recuperacion_1> {
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
            _textCorreo(),
            const SizedBox(height: 5),
            _inputCorreo(),
            const SizedBox(height: 20),
            _textTelefono(),
            const SizedBox(height: 5),
            _inputTelefono(),
            const SizedBox(height: 20),
            _btnVerificar(context),
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
        "Ingrese los datos y se enviara un correo electronico con un codigo para restablecer su contraseña",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textCorreo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Correo",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textTelefono() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Telefono",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _inputCorreo() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Correo",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputTelefono() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Telefono",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _btnVerificar(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/recuperacion_2');
        },
        child: const Text('VERIFICAR'),
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
          Navigator.pushReplacementNamed(context, '/');
        },
        child: const Text('ATRAS'),
      ),
    );
  }
}
