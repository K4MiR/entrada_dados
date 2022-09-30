import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Digite um valor'),
              //enabled: true,
              //maxLength: 5,
              //maxLengthEnforcement: true,
              /*style: TextStyle(
                fontSize: 20,
                color: Colors.amberAccent,
              ),*/
              //obscureText: true,
              /*
              onChanged: (String text) {
                print('Valor digitado:' + text);
              },
              */
              onSubmitted: (String text) {
                print('Valor digitado:' + text);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(_textEditingController.text);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.amberAccent,
            ),
            child: Text('Enviar'),
          )
        ],
      ),
    );
  }
}
