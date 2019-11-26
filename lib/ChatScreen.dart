import 'package:flutter/material.dart';
import 'EmailScreen.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController userInput = new TextEditingController();
  Widget getListView() {
    var listView = ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Plínio"),
            subtitle: Text("Olá, essa é uma mensagem genérica"),
        ),
      ],
    );
    return listView;
  }

  Widget getNewMessage(String input) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
            title: Text("Usuário"),
            subtitle: Text(input),
            trailing: Icon(Icons.wb_sunny)
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Plínio"),
          subtitle: Text("Olá, essa é uma mensagem genérica"),
        ),
      ],
    );
    return listView;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Container(
              height: 570,
              decoration: BoxDecoration(color: const Color(0xff7c94b6)),
              child: getListView()
          ),

          Container(
            height: 40,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: userInput,
                    ),
                  ),
                  Expanded(
                      child: FlatButton(
                    color: Colors.blue,
                    splashColor: Colors.blueAccent,
                    child: Text(
                      "Enviar",
                    ),
                    onPressed: () {
                      getNewMessage(userInput.text);
                    },
                  ))
                ]),
          ),
        ])));
  }
}
