import 'package:flutter/material.dart';

import 'EmailScreen.dart';

class PinScreen extends StatelessWidget {
  void _navigateToEmailScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Tela Inicial Guia Bixo'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Insíra seu PIN',
              style: TextStyle(fontSize: 24.0),
            ),
            Container(
              width: 100,
              child: TextField(
                decoration: InputDecoration(hintText: 'PIN'),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _navigateToEmailScreen(context);
              },
              child: Text('Enviar'),
            ),
          ])),
    );
  }
}