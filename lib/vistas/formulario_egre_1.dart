import 'package:flutter/material.dart';

class FormEgre extends StatefulWidget {
  const FormEgre({Key? key}) : super(key: key);

  @override
  State<FormEgre> createState() => _FormEgreState();
}

class _FormEgreState extends State<FormEgre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Muy bien, datos del egresado"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _textUniversidad(),
            const SizedBox(height: 5),
            _inputUniversidad(),
            const SizedBox(height: 20),
            _textFacultad(),
            const SizedBox(height: 5),
            _inputFacultad(),
            const SizedBox(height: 20),
            _textCarrera(),
            const SizedBox(height: 5),
            _inputCarrera(),
            const SizedBox(height: 20),
            _textPlanEstudios(),
            const SizedBox(height: 5),
            _inputPlanEstudios(),
            const SizedBox(height: 20),
            _textInscripcion(),
            const SizedBox(height: 5),
            _inputInscripcion(),
            const SizedBox(height: 20),
            _textAnoEgreso(),
            const SizedBox(height: 5),
            _inputAnoEgreso(),
            const SizedBox(height: 20),
            _textNumero(),
            const SizedBox(height: 5),
            _inputNumero(),
            const SizedBox(height: 20),
            _btnSiguiente(context),
            const SizedBox(height: 20),
            _btnAtras(context)
          ],
        ),
      ),
    );
  }

  Container _textUniversidad() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Centro de estudios superiores",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textFacultad() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Facultad o dependencia",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textCarrera() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Licenciatura o Ingenier??a",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textPlanEstudios() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Plan de Estudios",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textInscripcion() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Fecha de Inscripci??n",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textAnoEgreso() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "A??o de Egreso",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textNumero() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "# de Cedula Profesional",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _inputUniversidad() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Universidad",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputFacultad() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Facultad",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputCarrera() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Carrera",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputPlanEstudios() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Plan de Estudios",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputInscripcion() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Fecha de Inscripci??n",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputAnoEgreso() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "A??o",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputNumero() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "# de Cedula Profesional",
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
          Navigator.pushReplacementNamed(context, '/exp_egre');
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
          Navigator.pushReplacementNamed(context, '/tipo_registro');
        },
        child: const Text('ATRAS'),
      ),
    );
  }
}
