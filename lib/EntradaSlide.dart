import 'package:flutter/material.dart';


class EntradaSlide extends StatefulWidget {
  const EntradaSlide({Key? key}) : super(key: key);

  @override
  State<EntradaSlide> createState() => _EntradaSlideState();
}

class _EntradaSlideState extends State<EntradaSlide> {
  double valor = 5;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Slide"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
                value: valor,
                min: 0,
                max: 10,
                label: label,
                divisions: 10,
                activeColor: Colors.red,
                inactiveColor: Colors.grey,
                onChanged: (double? novoValor){
                  setState(() {
                    valor = novoValor!;
                    label = novoValor.toString();
                  });
                  //print("Valor selecionado" + novoValor.toString());
                },
            ),
            ElevatedButton(
                onPressed: (){
                  print("Valor selecionado: " + valor.toString());
                },
                child: Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
