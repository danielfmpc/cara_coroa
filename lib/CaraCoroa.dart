// import 'package:cara_coroa/Home.dart';
import 'package:flutter/material.dart';

class CaraCoroa extends StatefulWidget {
  String resultado;
  CaraCoroa(this.resultado);
  @override
  _CaraCoroaState createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.resultado == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("images/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}