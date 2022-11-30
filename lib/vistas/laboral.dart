import 'package:flutter/material.dart';

class Laboral extends StatefulWidget {
  const Laboral({Key? key}) : super(key: key);

  @override
  State<Laboral> createState() => _LaboralState();
}

class _LaboralState extends State<Laboral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Laboral'),),
        body: const Center(
          child:  Icon(
            Icons.business,
            size: 150,
          ),
        ),
    );
  }
}
