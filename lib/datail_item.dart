import 'package:flutter/material.dart';

class DatailItem extends StatelessWidget {
  const DatailItem({super.key});

  @override
  Widget build(BuildContext context) { // existen 2 tipos de navegacion , la normal y la 2.0 , si de un widget vas a otro . La 2.0 maneja el sistema de rutas, si quiero ver un detalle la app recoge...
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atras'),
      ),
      body: const Center(
        child: Text('Estoy en Detail'),
      ),
    );
  }
}