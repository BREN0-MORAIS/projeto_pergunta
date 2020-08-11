import 'package:flutter/material.dart';

//nosso metodo Principal
main() => runApp(new PergutaApp());

//faz com que nossa classe extenda widget do statelessWidget
class PergutaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        //scafold fornece a estrutura do nosso Componente
        home: Scaffold(
      //barra que fica no top do Aplicativo
      appBar: AppBar(
        title: Text("Meu APP"),
        backgroundColor: Colors.red,
      ),
    ));
  }
}
