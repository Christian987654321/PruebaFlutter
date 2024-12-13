import 'dart:math';

import 'package:faker/faker.dart' as fk;
import 'package:flutter/material.dart';
class DynamicList extends StatelessWidget { //stl enter, dyna tab
  const DynamicList({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = fk.Faker();
    return Scaffold(
      appBar: AppBar(title: const Text('Prueba de list'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ( context, int index) {  
          return ListTile(
            onTap: (){
              log('message:::$index' as num);
            } ,
            leading: const Icon(Icons.attach_money, color: Colors.green),
            title: Text(faker.person.name()),
            subtitle: Text('Monto: \$${faker.randomGenerator
            .decimal(min: 50,scale: 500).toStringAsFixed(2)}'),
          );
        },
        //children: [Text('Texto uno')],
      ),
    );
  }
}