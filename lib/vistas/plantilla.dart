import 'package:flutter/material.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Titulo superior"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Empieza a agregar cosas aqui'),
            const SizedBox(height: 20),
            _text(),
            const SizedBox(height: 20),
            _input(),
            const SizedBox(height: 20),
            _btn(context),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  //PLANTILLA PARA TEXTO PLANO
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

  //PLANTILLA TEXTFIELD OUTLINED
  Container _input() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Hint",
            border: InputBorder.none
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
          Navigator.pushReplacementNamed(context, '/rutaDelArchivoMain');
        },
        child: const Text('BOTON'),
      ),
    );
  }

}
