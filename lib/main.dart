import 'dart:math';

import 'package:caracoroa/jogar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyWidget(),));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  void _exibirResultado(){
    var itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)=> Jogar(imagem: resultado),)
  );
}
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("imagens/logo.png"),
            GestureDetector(
              child: Image.asset("imagens/botao_jogar.png"),
              onTap: _exibirResultado,
            )
          ],
        ),
      ),
    );
  }
}