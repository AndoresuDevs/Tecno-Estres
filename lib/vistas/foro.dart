import 'package:flutter/material.dart';

class Foro extends StatefulWidget {
  const Foro({Key? key}) : super(key: key);

  @override
  State<Foro> createState() => _ForoState();
}

class _ForoState extends State<Foro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Foro'),
        ),
        body: Center(
          child: ListView(
            children: <Widget> [
              const SizedBox(height: 20),
              const ListTile(
                  title: Text("Mensaje"),
                  subtitle: Text(
                      "JUAN FRANCISCO: ¿Como le hicieron en la actividad 2?"),
                  leading: Icon(Icons.message)),
              const SizedBox(height: 20),
              const ListTile(
                  title: Text("Mensaje"),
                  subtitle: Text(
                      "JULIAN LOPEZ: Solamente contestas la encuesta y automaticamente se registra como completada."),
                  leading: Icon(Icons.message)),
              const SizedBox(height: 20),
              const ListTile(
                  title: Text("Mensaje"),
                  subtitle: Text(
                      "JUAN FRANCISCO: Te puedo mandar mensaje privado para verlo mejor?'"),
                  leading: Icon(Icons.message)),
              const SizedBox(height: 20),
              const ListTile(
                  title: Text("Mensaje"),
                  subtitle: Text(
                      "Katia Gonzalez: Yo tengo el mismo error, me pueden ayudar tambien?"),
                  leading: Icon(Icons.message)),
              const SizedBox(height: 20),
              const ListTile(
                  title: Text("Mensaje"),
                  subtitle: Text(
                      "JULIAN LOPEZ: Claro, vayamos al foro de dudas."),
                  leading: Icon(Icons.message)),
              const ListTile(
                  title: Text("Mensaje"),
                  subtitle: Text(
                      "Katia Gonzalez: Ahi los veo, gracias!."),
                  leading: Icon(Icons.message)),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.5,child: _inpututMensaje(),),
                  SizedBox(width: MediaQuery.of(context).size.width*0.5,child: _btnEnviarMensaje(context),)
                ],
              )
            ],
          ),
        ));
  }

  Container _inpututMensaje() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.green)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
        child: TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              hintText: "Ingresa tu mensaje",
              border: InputBorder.none
          ),
        ),
      ),
    );
  }

  Container _btnEnviarMensaje(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width-30,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Enviar'),
      ),
    );
  }

}
