import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  /* en el staless widget no puedes hacer cambios de estado, al menos que uses
  un manejador de estado, un statelles se dibuja y se queda de esa manera */
  const HomeScreen({super.key});
  /* me ayuda a identificar este widget dentro del contexto, no es obligatorios
  pero es una buenea practica */

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    /* BuildContext es todo mi arbol de widgets. mantiene la referencia hasta 
    este punto */
    int counter = 10;
    return Scaffold(
      /* casit tdos los wwidgets reciben un child o un children son muy raros los 
      casos que no, el Sacaffold, es uno de ellos */
      /* el scaffold prepara mi aplicacion para que yo pueda trabajar en el
      fondo blanco */
      /* es como un lienzo donde puedes comenzar a ponert tus widgets */
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen')),
        elevation: 20,
      ),
      /* tiene que tener cierto tamano definido */
      /* el appbar no es un const, puede cambiar segun el tamano de la panatalla */
      body: Center(
        child: Column(
          /* la columnas y los rows son parecidos al flex de csss */
          mainAxisAlignment: MainAxisAlignment.center, //vertical
          /*  crossAxisAlignment: CrossAxisAlignment.center, se alinea relativamente
          al widget de mayor tamano */

          children: <
                  Widget> /* ayuyda a saber 
          que todo lo que esta adentro son solo
          widgets */
              [
            const Text('Number of Clicks', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          counter++;
          print('hello ' '$counter');
        },
      ),
    );
  }
  /* es un buen patron realizar pequenos widgets que realizen tareas mas
  especializadas */
}
