import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

bool _comidaBrasilera = false;
bool _comidaMexicana = false;

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo"),
              //activeColor: Colors.lightBlueAccent,
              //selected: false,
              //secondary: Icon(Icons.add_a_photo),
              value: _comidaBrasilera,
              onChanged: (bool? valor) {
                setState(() {
                  _comidaBrasilera = valor!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("Muita pimenta"),
              //activeColor: Colors.lightBlueAccent,
              //selected: false,
              //secondary: Icon(Icons.add_a_photo),
              value: _comidaMexicana,
              onChanged: (bool? valor) {
                setState(() {
                  _comidaMexicana = valor!;
                });
              },
            ),
            ElevatedButton(
                onPressed: (){
                  print(
                    "Comida Brasileira: " +  _comidaBrasilera.toString() + " Comida Mexicana " +  _comidaMexicana.toString()
                  );
                },
                child: Text("Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
                ))

            /*
            Text('Comida Brasileira'),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool? valor) {
               setState(() {
                 _estaSelecionado = valor!;
               });
              },
            ),
            */
          ],
        ),
      ),
    );
  }
}
