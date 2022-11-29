import 'package:flutter/material.dart';
class AcercaDe extends StatefulWidget {
  const AcercaDe({Key? key}) : super(key: key);

  @override
  State<AcercaDe> createState() => _AcercaDeState();
}

class _AcercaDeState extends State<AcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Acerca de...'),
        ),
        body: Column(
          children: [
            SingleChildScrollView( //SCROLL VIEW
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    width: MediaQuery.of(context).size.width-30,
                    child: Column(
                      children: const [
                        Text( "Acerca de IMAvision!", style: TextStyle(fontSize: 34, decorationStyle: TextDecorationStyle.solid),),
                        SizedBox(height: 20),

                      ],
                    ),
                  ),
                  _plainText(context,"IMAvision es una plataforma orientada a todos los ingenieros de la rama mecanica administrativa, fue conceptualizada en enero de 2022, y desarrollada con fuente de investigación y herramienta de estudio descargable para los estudiantes."),
                  const SizedBox(height: 20),
                  _plainText(context, "INTEGRANTES:"),
                  const SizedBox(height: 8),

                  _plainText(context, "PROJECT MANAGER: VALERIA PAOLA GONZALES DUEÑEZ"),
                  const SizedBox(height: 60),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    width: MediaQuery.of(context).size.width-30,
                    child: const Text("EQUIPO DE DESARROLLO:"),
                  ),

                  const SizedBox(height: 10),

                  _plainText(context, "Alvaro López Margáin 1845876"),
                  const SizedBox(height: 8),

                  _plainText(context, "Andres Alberto Dimas Martinez 1871632"),
                  const SizedBox(height: 8),

                  _plainText(context, "Pedro Alarcon Sanchez 1942568"),
                  const SizedBox(height: 8),

                  const SizedBox(height: 40),

                  _plainText(context, 'ESTE PROTOTIPO ESTA EN FASE ALPHA, SE DEBE DE CONSIDERAR CAMBIOS PERTINENTES Y POSIBLES ERRORES O BUGS QUE INTERRUMPAN LA EXPERIENCIA DE USO, SI OBYIENE ESTE PROBLEMA CONTACTE AL SIGUIENTE CORREO:'),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    width: MediaQuery.of(context).size.width-30,
                    child: const Text("devsupport@imavision.com", style: TextStyle(color: Colors.blue),),
                  ),
                  const SizedBox(height: 50),
                  _btnRegresar(context)

                ],
              ),
            ),
          ],
        )

    );
  }

  Container _plainText(BuildContext context, String texto) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width-30,
      child: Text(texto),
    );
  }

  Container _btnRegresar(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
        child: const Text('REGRESAR'),
      ),
    );
  }
}
