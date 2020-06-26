import 'package:flutter/material.dart';
import 'package:uber/telas/corrida.dart';
import 'package:uber/telas/painelmotorista.dart';
import 'package:uber/telas/painelpassageiro.dart';
import 'package:uber/telas/cadastro.dart';
import 'package:uber/telas/home.dart';

class Rotas {
  static Route<dynamic> gerarRotas(RouteSettings settings) {

    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Home());
      case "/cadastro":
        return MaterialPageRoute(builder: (_) => Cadastro());
      case "/painelmotorista":
        return MaterialPageRoute(builder: (_) => PainelMotorista());
      case "/painelpassageiro":
        return MaterialPageRoute(builder: (_) => PainelPassageiro());
      case "/corrida":
        return MaterialPageRoute(builder: (_) => Corrida(
          args
        )
      );
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota(){

    return MaterialPageRoute(
      builder: (_){
        return Scaffold(
          appBar: AppBar(title: Text("Tela não encontrada!"),),
          body: Center(
            child: Text("Tela não encontrada!"),
          ),
        );
      }
    );

  }
}
