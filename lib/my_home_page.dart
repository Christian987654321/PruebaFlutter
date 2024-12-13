
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title; // Variable

  @override // sobreescrito de StatefulWidget _(metodo privado)
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });//incrementa y refresca la vista
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold( // Scaffold es una pantalla
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,


        title: Text(widget.title),
      ),
      body: Center( //safe area es para iOS es para la toolbar de la línea esa PINTA para abajo , y de los botones de abajo para arriba


        child: Column( //column  //stack consume muchos recursos
                      //puede ser child Row línea

          mainAxisAlignment: MainAxisAlignment.center, // si el column no esta centrado , UI declarativa 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('Prueba padding'),
              ),

            Container(
              color: Colors.blueAccent,
              margin: const EdgeInsets.only(left: 24.0),
              child: const Text('Prueba Container'),
            ),

            const Card(
              child:Padding(
                padding: EdgeInsets.all(8.0)),
              
             // child: Text('Prueba Card'),
            ),
          
          //children: <Widget>[ // mete una lista de Widget
            
            const SizedBox(
              width: 80,
              child: Row( // fittedBox  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Space arround hace el espacio por fuera y por dentro padding margin. Evenly la misma separacion
                children: [
                Text('Prueba1'), // padding , contained , sizebox 3 tipos de contenedores
                Icon(Icons.add_a_photo),
                Text('Prueba1'),
              ],
              ),
            ),

            const Text( 
              'You have pushed the button this many times:',
              overflow: TextOverflow.ellipsis,// ellipsis cuando el texto es muy grande lo pone ... , clip lo corta,

              style: TextStyle(color: Colors.blueAccent, fontSize: 24.0),// y le damos color al texto y tamaño
            ),
            Text(
              '$_counter', // Interpolacion 
              style: Theme.of(context).textTheme.headlineMedium,
            ),
      ],
        ),
      ),
      floatingActionButton: FloatingActionButton( // Esto es de material design , puede ser cualquier tipo de boton 
        onPressed: _incrementCounter, // Segment button , 
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}