import 'package:flutter/material.dart';
import 'package:quiz_pergunta/Resposta.dart';

//nosso metodo Principal
main() => runApp(new apresentar());

class apresentar extends StatelessWidget {
  var perguntaSelecionada = 0;
  List<String> Perguntas = [
    "Qual a Sua Cor favorita",
    "Qual Seu Animal Favorito",
  ];
  void responder() {
    perguntaSelecionada++;
  }

  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My App",
            style: TextStyle(),
          ),
        ),
        body: Column(
          children: <Widget>[
            Text(Perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Pergunta 2"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Pergunta 3"),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}
