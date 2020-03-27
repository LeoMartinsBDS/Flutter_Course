import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frase = [
    "Se você não tem razão para estar vivo, é o mesmo que estar morto.",
    "É da natureza humana não perceber o real valor de uma coisa, ao menos que a percam.",
    "Quem quebra as regras pode ser considerado lixo, mas quem abandona seus amigos é pior que lixo.",
    "As gerações futuras sempre irão superar as passadas e assumir seus lugares.",
    "O Naruto pode ser um pouco duro as vezes, talvez você não saiba mas ele também cresceu sem pai e nunca teve nenhum amigo em nossa aldeia, na verdade ele nunca conheceu nenhum de seus pais, mas eu nunca vi ele chorar meu palpite... Ele se cansou de chorar"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frase.length);

    setState(() {
      _fraseGerada = _frase[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
            */
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              RaisedButton(
                child: Text("Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
