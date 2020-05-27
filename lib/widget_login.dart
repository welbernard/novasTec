import 'package:flutter/material.dart';
import 'package:app_covid/app_covid_icons.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  GlobalKey<FormState> _formLoginKey = GlobalKey<FormState>();

  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: null,
        ),

        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formLoginKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset("assets/imagens/virus.jpg", scale: 1.5, fit: BoxFit.fitWidth,),

                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),

                    child: Text(
                    "COVID-19",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),

                    textAlign: TextAlign.center,
                  ),
                ),

                campoUsuario("Usuário", txtUsuario),
                campoSenha("Senha", txtSenha),
                botaoEntrar(context),
              ],
            )
          ),
        ),

        backgroundColor: Colors.white);
  }

  campoUsuario(rotulo, controle) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black, fontSize: 20),
    
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Colors.red[500],
            fontSize: 12,
          ),
          prefixIcon: Icon(AppCovid.virus),
        ),

        controller: controle,

        validator: (value) {
          return (value.isEmpty) ? "Informe o Usuário" : null;
        },
      ),
    );
  }

  campoSenha(rotulo, controle) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black, fontSize: 20),
        obscureText: true,

        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Colors.red[500],
            fontSize: 12,
          ),
          prefixIcon: Icon(AppCovid.enhanced_encryption),
        ),

        controller: controle,

        validator: (value) {
          return (value.isEmpty) ? "Informe a Senha" : null;
        },
      ),
    );
  }

  botaoEntrar(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20),

        child: RaisedButton(
          child: Text(
            "Entrar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          color: Colors.red[500],

          onPressed: () {
            if (_formLoginKey.currentState.validate()) {
              Navigator.pushNamed(context, '/Menu');
            }
          },
        ));
  }
}




