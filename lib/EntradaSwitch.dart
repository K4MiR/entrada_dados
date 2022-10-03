import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool? _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
                title: Text("Receber notificações"),
                value: _escolhaUsuario!,
                onChanged: (bool? valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }),
            /*SwitchListTile(
                title: Text("Configuração"),
                value: _escolhaCofig!,
                onChanged: (bool? valor) {
                  setState(() {
                    _escolhaCofig = valor;
                  });
                }),*/
            ElevatedButton(
                onPressed: (){
                  //print("Resultado" + _escolhaUsuario.toString());
                  if(_escolhaUsuario!){
                     print("Escolha: Ativar notificações");
                  }else{
                    print("Escolha: Não ativar notificações");
                  }
                },
                child: Text("Salvar"))

            /*
            Switch(
                value: _escolhaUsuario!,
                onChanged: (bool valor){

                  setState(() {
                    _escolhaUsuario = valor;
                  });

                }),

            Text("Receber noticações"),
            */
          ],
        ),
      ),
    );
  }
}
