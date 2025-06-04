import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
   final String imagem;
    const Jogar({super.key, required this.imagem});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
 
  
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
   if( widget.imagem == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
   }else{
      caminhoImagem = "imagens/moeda_coroa.png";
   }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              child: Image.asset("imagens/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}