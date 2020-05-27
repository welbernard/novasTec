import 'package:flutter/material.dart';

class Sintomas extends StatefulWidget {
  @override
  _Sintomas createState() => _Sintomas();
}

class _Sintomas extends State<Sintomas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Sintomas COVID-19'),
            centerTitle: true,
            backgroundColor: Colors.red,
            actions: null,
          ),
          body: MyLayout()
      );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text('Alerta para os Sintomas'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {


  Widget opcao_um = SimpleDialogOption(
    child: const Text('Febre'),
    onPressed: () {
      print('Febre');
      Navigator.of(context).pop();
    },
  );
  Widget opcao_dois = SimpleDialogOption(
    child: const Text('Tosse'),
    onPressed: () {
      print('tosse');
      Navigator.of(context).pop();
    },
  );
  Widget opcao_tres = SimpleDialogOption(
    child: const Text('Dor de garganta'),
    onPressed: () {
      print('dor de garganta');
      Navigator.of(context).pop();
    },
  );
  Widget opcao_quatro = SimpleDialogOption(
    child: const Text('Falta de ar'),
    onPressed: () {
      print('Falta de ar');
      Navigator.of(context).pop();
    },
  );

  SimpleDialog dialog = SimpleDialog(
    title: const Text('Principais sintomas covid-19'),
    children: <Widget>[
      opcao_um,
      opcao_dois,
      opcao_tres,
      opcao_quatro,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}
