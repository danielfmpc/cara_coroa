import 'dart:math';

import 'package:cara_coroa/CaraCoroa.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _jogar(){
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);

    var _resultado = itens[numero];

    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => CaraCoroa(_resultado),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
      body: Container(
        child: Column(            
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _jogar,
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Image.asset("images/botao_jogar.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}