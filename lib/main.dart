import 'dart:developer';

import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() async {
  runApp(const MyApp());
  //await obtenerDatos();
  //log('Que pasa, me imprimo primero');
}

Future<void> obtenerDatos()async{ // Se usa como para poner una animacion en lo que se carga la data
  log ('Empezo...'); // log de la clase developer
  await Future.delayed(const Duration(seconds: 2),(){
    log('Estoy dentro');
  });
  log('He salido');
}
//Faker es una librería para añadir datos falsos a la app


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {    
    return const MaterialApp(         //La app lo que tiene es un Material app
      title: 'Flutter Demo',
      /*theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),*/
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: DynamicList(),
    );
  }
}




