import 'package:flutter/material.dart';

class Exp_egre extends StatefulWidget {
  const Exp_egre({Key? key}) : super(key: key);

  @override
  State<Exp_egre> createState() => _Exp_egreState();
}

class _Exp_egreState extends State<Exp_egre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Experiencia Laboral"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _textPuesto(),
            const SizedBox(height: 5),
            _inputPuesto(),
            const SizedBox(height: 20),
            _textEmpresa(),
            const SizedBox(height: 5),
            _inputEmpresa(),
            const SizedBox(height: 20),
            _textCorreo(),
            const SizedBox(height: 5),
            _inputCorreo(),
            const SizedBox(height: 20),
            _textFechaA(),
            const SizedBox(height: 5),
            _inputFechaA(),
            const SizedBox(height: 20),
            _textFechaB(),
            const SizedBox(height: 5),
            _inputFechaB(),
            const SizedBox(height: 20),
            _textDescripcion(),
            const SizedBox(height: 5),
            _inputDescripcion(),
            const SizedBox(height: 20),
            _btnSiguiente(context),
            const SizedBox(height: 20),
            _btnAtras(context)
          ],
        ),
      ),
    );
  }

  Container _textPuesto() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Puesto o Ocupación",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textEmpresa() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Empresa",
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
        "Correo Electronico empresarial",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textFechaA() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Fecha de Alta",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textFechaB() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Fecha de Baja",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textDescripcion() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Descripcion breve de labor en la empresa ",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _inputPuesto() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Puesto",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputEmpresa() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Empresa",
            border: InputBorder.none
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
            hintText: "Correo electronico empresarial",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputFechaA() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Fecha de Alta",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputFechaB() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Fecha de Baja",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputDescripcion() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Descripcion breve de labor en la empresa",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _btnSiguiente(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/registroCompletado');
        },
        child: const Text('SIGUIENTE'),
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
          Navigator.pushReplacementNamed(context, '/registroEgresado');
        },
        child: const Text('ATRAS'),
      ),
    );
  }
}
