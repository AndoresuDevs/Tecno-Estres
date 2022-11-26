import 'package:flutter/material.dart';

//Select a code fragment you want to extract to a method.
// Press Ctrl+Alt+M or from the main menu, select Refactor | Extract | Method.


class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( //SCROLL VIEW
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
          _inputCorreo(),
          const SizedBox(height: 20),
          _plainText(context, "CONTRASEÑA"),
          const SizedBox(height: 8),
          _inputPassword(),
          const SizedBox(height: 60),
          _plainText(context, "Olvidaste tu contraseña? Click aquí en recuperar cuenta"),
          const SizedBox(height: 30),
          _btnIniciarSesion(context),
          const SizedBox(height: 10),
          _btnRegistrate(context),
          const SizedBox(height: 10),
          _btnAcercaDe(context),
          /*
          FILA PARA AGRUPAR OBJETOS
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width*0.5,child: _inputCorreo(),),
              SizedBox(width: MediaQuery.of(context).size.width*0.5,child: _inputPassword(),)
            ],
          )
           */
        ],
      ),
    );
  }

  Container _plainText(BuildContext context, String texto) {
    return Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width-30,
          child: Text(texto),
        );
  }

  Container _btnIniciarSesion(BuildContext context) {
    return Container(
          height: 40,
          margin: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width-30,
          child: ElevatedButton(

            onPressed: () {},
            child: const Text('Iniciar Sesion'),
          ),
        );
  }

  Container _btnRegistrate(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Registrate'),
      ),
    );
  }

  Container _btnAcercaDe(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/acerca_de');
        },
        child: const Text('Acerca de'),
      ),
    );
  }

  Container _inputCorreo() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.green)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(

          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "Ingrese su correo",
              border: InputBorder.none
          ),
        ),
      );
  }

  Container _inputPassword() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.green)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
            hintText: "Ingrese su contraseña",
            border: InputBorder.none
        ),
      ),
    );
  }
}
