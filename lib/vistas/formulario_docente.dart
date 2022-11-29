import 'package:flutter/material.dart';

class FormDoc extends StatefulWidget {
  const FormDoc({Key? key}) : super(key: key);

  @override
  State<FormDoc> createState() => _FormDocState();
}

class _FormDocState extends State<FormDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Muy bien, datos del docente"),),
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
            _textMatricula(),
            const SizedBox(height: 5),
            _inputMatricula(),
            const SizedBox(height: 20),
            _textCedula(),
            const SizedBox(height: 5),
            _inputCedula(),
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
        "Licenciatura o Ingeniería",
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
        "Fecha de Inscripción",
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
        "Año de Egreso",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textMatricula() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Matrícula o ID de docente",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }

  Container _textCedula() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width - 30,
      child: const Text(
        "Cedula Profesional",
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
            hintText: "Fecha de Inscripción",
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
            hintText: "Año de egreso",
            border: InputBorder.none
        ),
      ),
    );
  }
  Container _inputCedula() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Cedula Profesional",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputMatricula() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Matricula",
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
          Navigator.pushReplacementNamed(context, '/exp_doc');
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
