import 'package:flutter/material.dart';

//nosso metodo Principal
main() => runApp(new PerguntaApp());

//classe que gerencia o estado da classe principal para efetuar a atualização
class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  build(BuildContext context) {
    List<String> perguntas = [
      "Qual a Sua Cor favorita",
      "Qual Seu Animal Favorito 1",
      "Qual Seu Animal Favorito 2",
      "Qual Seu Animal Favorito 3",
      "Qual Seu Animal Favorito 4",
      "Qual Seu Animal Favorito 5",
      "limite"
    ];

    void responder() {
      setState(() {
        if (perguntaSelecionada > 6) {
          List<String> a = ["Limite"];
          perguntaSelecionada = 7;
          perguntas = a;
        }
        perguntaSelecionada++;
      });
    }

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
            Text(perguntas[perguntaSelecionada]),
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
            ),
            RaisedButton(
              child: Text("zerar"),
              onPressed: () {
                perguntas[perguntaSelecionada];

                perguntaSelecionada = 0;
              },
            )
          ],
        ),
      ),
    );
  }
}

//para controlar o estado da classe precisa ter o StatefulWidget
class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
