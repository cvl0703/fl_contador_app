import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reiniciar() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Home Screen'), elevation: 10.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clicks: $contador',
              style: TextStyle(fontSize: 20, fontFamily: 'times new roman'),
            ),
            Text('Crear un homescreem'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        incrementar: incrementar,
        decrementar: decrementar,
        reiniciar: reiniciar,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function incrementar;
  final Function decrementar;
  final Function reiniciar;

  const CustomFloatingActionButton({
    super.key,
    required this.incrementar,
    required this.decrementar,
    required this.reiniciar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //child: const Icon(Icons.add),
        FloatingActionButton(
          child: const Icon(Icons.add),
          elevation: 12.0,
          onPressed: () => incrementar(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          elevation: 12.0,
          onPressed: () => reiniciar(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          elevation: 12.0,
          onPressed: () => decrementar(),
        ),
      ],
    );
  }
}
