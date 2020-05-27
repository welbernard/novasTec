import 'package:flutter/material.dart';

class Emergencia extends StatefulWidget {
  @override
  _Emergencia createState() => _Emergencia();
}

class _Emergencia extends State<Emergencia> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Emergencia"),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: null,
        ),

        body: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),

            child: Column(
              children: <Widget>[
                Text(
                  'Covid-19: Saiba quando procurar atendimento na emergência hospitalar',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),

                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red[200], width: 1),
                      borderRadius: BorderRadius.circular(5),

                      gradient: new LinearGradient(
                          colors: [Colors.red[200], Colors.white10],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                    ),

                    padding: EdgeInsets.all(10.0),

                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Com o propósito de evitar transmissão e proteger os demais pacientes nas dependências das Emergências hospitalares, o paciente deve procurar atendimento, somente se: Apresentar sintomas respiratórios graves como: falta de ar, respiração acelerada, dificuldade para respirar, quadro clínico característico em caso de suspeita do novo coronavírus. Se seus sintomas forem leves, permaneça em repouso e em isolamento domiciliar. Assim, você estará reduzindo a possibilidade de transmissão para outras pessoas e garantindo o atendimento aos pacientes graves.",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),

        backgroundColor: Colors.white);
  }
}