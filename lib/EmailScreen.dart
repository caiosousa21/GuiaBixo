import 'package:flutter/material.dart';

import 'ChatScreen.dart';

class EmailScreen extends StatelessWidget {
  void _navigateToChatScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Cadastro de Email'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Insíra seu Email',
              style: TextStyle(fontSize: 24.0),
            ),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: 'email'),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _navigateToChatScreen(context);
              },
              child: Text('Enviar'),
            ),
          ])),
    );
  }
}
