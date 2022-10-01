import 'package:flutter/material.dart';

class EntradaElevatedButtom extends StatefulWidget {

  const EntradaElevatedButtom({Key? key}) : super(key: key);

  @override
  State<EntradaElevatedButtom> createState() => _EntradaElevationButtomState();

}

class _EntradaElevationButtomState extends State<EntradaElevatedButtom> {

String? _escolhaUsuario ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: Text("Masculino"),
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado:" + _escolhaUsuario!);
              }
          ),
          RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado:" + escolha!);
              }
          ),
          ElevatedButton(
              onPressed: (){
                print("Resultado" + _escolhaUsuario!);
              },
              child: Text("Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
          /*
          Text("Masculino"),
             Radio(
             value: "m",
             groupValue: _escolhaUsuario,
             onChanged: (String? escolha){
               setState(() {
                 _escolhaUsuario = escolha;
               });
               print("resultado:" + escolha!);
             },
             ),
          Text("Feminino"),
          Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado:" + escolha!);
              },
          ),
          */


        ],
      ),
    );
  }


}
