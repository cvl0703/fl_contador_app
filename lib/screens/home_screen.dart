import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Home Screen'), elevation: 10.0),
      body: Center(
        child: const Column(
          children: <Widget>[
            Text('Welcome to the Home Screen!'),
            Text('Crear un homescreem'),
            Expanded(child: FittedBox(child: FlutterLogo())),
          ],
        ),
      ),
    );
  }
}
