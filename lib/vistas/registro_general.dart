import 'package:flutter/material.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({Key? key}) : super(key: key);

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fácil... llene sus datos.'),),
      body:
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const SizedBox(height: 20),
                _textNombre(),
                const SizedBox(height: 5),
                _inputNombre(),

                const SizedBox(height: 20),
                _textApellidos(),
                const SizedBox(height: 5),
                _inputApellidos(),

                const SizedBox(height: 20),
                _textEdad(),
                const SizedBox(height: 5),
                _inputEdad(),

                const SizedBox(height: 20),
                _textSexo(),
                const SizedBox(height: 5),
                _inputSexo(),

                const SizedBox(height: 20),
                _textTelefono(),
                const SizedBox(height: 5),
                _inputTelefono(),

                const SizedBox(height: 20),
                _textDireccion(),
                const SizedBox(height: 5),
                _inputDireccion(),

                const SizedBox(height: 20),
                _textCorreo(),
                const SizedBox(height: 5),
                _inputCorreo(),

                const SizedBox(height: 20),
                _textCorreo2(),
                const SizedBox(height: 5),
                _inputCorreo2(),

                const SizedBox(height: 20),
                _textContra(),
                const SizedBox(height: 5),
                _inputContra(),

                const SizedBox(height: 20),
                _textContra2(),
                const SizedBox(height: 5),
                _inputContra2(),
                const SizedBox(height: 40),
                _btnSiguiente(context),
                const SizedBox(height: 40),
                _btnSalir(context),
                const SizedBox(height: 40),

              ],
            ),
          )


    );
  }

  Container _textNombre() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Nombre(s):",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textApellidos() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Apellido(s):",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textEdad() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Edad:",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textSexo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Sexo:",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textTelefono() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Número de teléfono o celular:",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textDireccion() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Dirección:",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textCorreo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Correo electrónico (Personal o Universitario):",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textCorreo2() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Confirmar correo electrónico:",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textContra() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Contraseña:",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _textContra2() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery
          .of(context)
          .size
          .width - 30,
      child: const Text("Confirmar contraseña:",
        style: TextStyle(color: Colors.black, fontSize: 20     ),
      ),
    );
  }

  Container _inputNombre() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              hintText: "Ingrese su Nombre",
              border: InputBorder.none
          ),
      ),
    );
  }

  Container _inputApellidos() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Ingrese sus Apellidos",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputEdad() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Ingrese su Edad",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputSexo() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Ingrese su Sexo",
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
            hintText: "Ingrese su Telefono o Celular",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputDireccion() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Ingrese su Dirección",
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
            hintText: "Ingrese su Correo",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputCorreo2() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Confirme su Correo",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputContra() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Ingrese su Contraseña",
            border: InputBorder.none
        ),
      ),
    );
  }

  Container _inputContra2() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Confirme su Contraseña ",
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
          Navigator.pushReplacementNamed(context, '/registroEst2');
        },
        child: const Text('SIGUIENTE'),
      ),
    );
  }

  Container _btnSalir(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        style: const ButtonStyle(),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
        child: const Text('SALIR'),
      ),
    );
  }

}
