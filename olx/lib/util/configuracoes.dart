import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';

class Configuracoes {
  
  
  static List<DropdownMenuItem<String>> getEstados() {
    List<DropdownMenuItem<String>> _listaItensDropEstados = [];

    _listaItensDropEstados.add(DropdownMenuItem(
      child: Text(
        "Região",
        style: TextStyle(color: Color(0xff9c27b0)),
      ),
      value: null,
    ));

     for (var estado in Estados.listaEstadosAbrv) {
      _listaItensDropEstados.add(DropdownMenuItem(
        child: Text(estado),
        value: estado,
      ));
    }

    return _listaItensDropEstados;
  }

}
