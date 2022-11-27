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
          title: const Text('Sample Code'),
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
                        Text( "Bienvenido a IMAvision!", style: TextStyle(fontSize: 34, decorationStyle: TextDecorationStyle.solid),),
                        SizedBox(height: 20),

                      ],
                    ),
                  ),
                  _plainText(context,"IMAvision es una herramienta ideal para todo interesado en la ingenieria, una perfecta guia de aprendizaje a una nueva experiencia academicay laboral. Únete completamente gratiso inicia sesión y empieza a forjarte como un ingeniero a tu medida"),
                  const SizedBox(height: 20),
                  _plainText(context, "CORREO ELECTRONICO:"),
                  const SizedBox(height: 8),

                  _plainText(context, "Olvidaste tu contraseña? Click aquí en recuperar cuenta"),
                  const SizedBox(height: 30),
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
