import 'package:flutter/material.dart';
import 'EmailScreen.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController userInput = new TextEditingController();
  List<ListTile> tiles = new List<ListTile>();

  Widget _buildTileItem(BuildContext context, int index) {
    if (tiles.length == 0){
      return Card(
          child: Column(
          children: <Widget>[
              ListTile(
              leading: Image.asset('Resources/bot.png', height: 40, width: 40),
            title: Text("Plínio"),
            subtitle: Text("Olá! Sou Plínio, seu assistente virtual!"),)
          ],
        ),
      );
    }
    else{
      return Card(
        child: Column(
          children: <Widget>[
            tiles.elementAt(index)
          ],
        ),
      );
    }
  }

  void setListTiles(String input) {
    tiles.add(ListTile(
        title: Text("Usuário"),
        subtitle: Text(input),
        trailing: Icon(Icons.wb_sunny)
    ));
    tiles.add(ListTile(
      leading: Image.asset('Resources/bot.png', height: 40, width: 40),
      title: Text("Plínio"),
      subtitle: Text("Olá! Sou Plínio, seu assistente virtual!"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("Guia Bixo"),),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 570,
                      decoration: BoxDecoration(color: const Color(0xff7c94b6)),
                      child: new ListView.builder(itemBuilder: _buildTileItem, itemCount: tiles.length,)
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
                                  setListTiles(userInput.text);
                                  (context as Element).markNeedsBuild();
                                },
                              ))
                        ]),
                  ),
                ])));
  }
}
