import 'package:flutter/material.dart';

/* la mayoria del tiempo hay que tratar de trabajar con stateleswidget y si nuestra
problema se puede resolver con stateful lo cambiamos, pero hay mejores maneras de
manejar el estado */
class CounterScreen extends StatefulWidget {
  /* cambia como esta definido el widget inicialmente  */
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
  /* creacion del estado */
}

class _CounterScreenState extends State<CounterScreen> {
  /* tenemos un estado */
  int counter = 10; //Se maneje como una propiedad, no como una variable

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  /* funciones que se van a pasar al otro widget para que se pueda modificar el estado */

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    /* BuildContext es todo mi arbol de widgets. mantiene la referencia hasta 
    este punto */

    return Scaffold(
      /* casit tdos los wwidgets reciben un child o un children son muy raros los 
      casos que no, el Sacaffold, es uno de ellos */
      /* el scaffold prepara mi aplicacion para que yo pueda trabajar en el
      fondo blanco */
      /* es como un lienzo donde puedes comenzar a ponert tus widgets */
      appBar: AppBar(
        title: const Center(child: Text('CounterScreen')),
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
      floatingActionButton: CustomFloatingActionButtons(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActionButtons extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  const CustomFloatingActionButtons({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      /* como columns te permite manejar varios widgets en una fila */
      FloatingActionButton(
        onPressed: () =>
            increaseFn(), //funcion anonima, siempre pide una funcion,
        //notifica que hay un cambio interno en el estado, por eso va a redibujar el widget
        child: const Icon(Icons.add),
      ),
      /*  const SizedBox(width: 20), */ //te permite agregagar espacio entre widgets
      FloatingActionButton(
        onPressed: () => resetFn(),
        child: const Icon(Icons.exposure_zero),
      ),
      /*  const SizedBox(width: 20), */
      FloatingActionButton(
        onPressed: () => decreaseFn(),
        child: const Icon(Icons.exposure_minus_1_outlined),
      ),
    ]);
  }
}
