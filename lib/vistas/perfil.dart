import 'package:flutter/material.dart';

class perfil extends StatefulWidget {
  const perfil({Key? key}) : super(key: key);

  @override
  State<perfil> createState() => _perfilState();
}

class _perfilState extends State<perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil'),),
      body: const Center(
        child:  Icon(
          Icons.account_box,
          size: 150,
        ),
      )
    );
  }
}
