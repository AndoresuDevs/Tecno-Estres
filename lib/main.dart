import 'package:flutter/material.dart';
import 'package:tecno_estres/vistas/acerca_de.dart';
import 'package:tecno_estres/vistas/formulario_estudiantil.dart';
import 'package:tecno_estres/vistas/formulario_login.dart';
import 'package:tecno_estres/vistas/registro_completo.dart';
import 'package:tecno_estres/vistas/registro_general.dart';
import 'package:tecno_estres/vistas/tipo_de_registro.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key }) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IMAvision',
      theme: ThemeData(
        primarySwatch: buildMaterialColor(const Color(0xFF008F39))
      ),
      home: const Scaffold(
        body: FormLogin(),
      ),


      routes: {
        '/login':(_)=> const FormLogin(),
        '/acerca_de':(_)=> const AcercaDe(),
        '/registroEst1':(_)=> const FormRegister(),
        '/registroEst2':(_)=> const FormStudent(),
        '/registroCompletado':(_)=> const RegistroCompletado(),
        '/tipo_registro':(_)=> const TipoRegistro(),



      }



    );
  }
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
