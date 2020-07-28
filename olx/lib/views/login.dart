import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:olx/models/usuario.dart';
import 'package:olx/views/widgets/botaoCustomizado.dart';

import 'package:olx/views/widgets/inputCustomizado.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  bool _cadastrar = false;
  String _mensagemErro = "";
  String _textoBotao = "Logar";

  _cadastrarUsuario(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth
        .createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((firebaseUser) {
      Navigator.pushReplacementNamed(context, "/");
    });
  }

  _logarUsuario(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth
        .signInWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((firebaseUser) {
      Navigator.pushReplacementNamed(context, "/");
    })
    .catchError((error){
    setState((){
      _mensagemErro = "Erro ao autenticar usuário. Verifique o e-mail e senha.";
    });
    });
  }

  _validarCampos() {
    _mensagemErro = "";
    String email = _controllerEmail.text.trim();
    String senha = _controllerSenha.text.trim();

    if (email.isNotEmpty && email.contains("@")) {
      if (senha.isNotEmpty && senha.length > 6) {
        Usuario usuario = Usuario();
        usuario.email = email;
        usuario.senha = senha;

        if (_cadastrar) {
          _cadastrarUsuario(usuario);
        } else {
          _logarUsuario(usuario);
        }
      } else {
        setState(() {
          _mensagemErro = "Preencha a senha com 7 caracteres!";
        });
      }
    } else {
      setState(() {
        _mensagemErro = "Preencha com um E-mail válido";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "imagens/logo.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                InputCustomizado(
                    controller: _controllerEmail,
                    hint: "E-mail",
                    autofocus: true,
                    type: TextInputType.emailAddress),
                InputCustomizado(
                    controller: _controllerSenha, hint: "Senha", obscure: true, maxLines: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Logar"),
                    Switch(
                      value: _cadastrar,
                      onChanged: (bool valor) {
                        setState(() {
                          _cadastrar = valor;
                          _textoBotao = "Entrar";
                          if (_cadastrar) {
                            _textoBotao = "Cadastrar";
                          }
                        });
                      },
                    ),
                    Text("Cadastrar"),
                  ],
                ),
                BotaoCustomizado(
                  texto: _textoBotao,
                  onPressed: _validarCampos,
                ),
                FlatButton(
                  child: Text("Ir para anúncios"),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "/");
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(_mensagemErro,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
