import 'dart:math';

import 'package:caraoucoroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado(){

    var itens = ["cara","coroa"];

    var numeroAleatorio = Random().nextInt(itens.length);

    Navigator.push(context, MaterialPageRoute(
      builder: (context) => Resultado(itens[numeroAleatorio])
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff61bd86),
       body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Image.asset("imagens/logo.png"),
             GestureDetector(
               onTap: _exibirResultado,
               child: Image.asset("imagens/botao_jogar.png"),
             )
           ],
         )
       )
    );
  }
}