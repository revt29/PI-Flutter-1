import 'package:flutter/material.dart';
import 'package:maua/botaovoltar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BotaoVoltar(
          texto: '< Voltar',
          funcao: () {
            // "Deleta" a primeira página
            Navigator.pop(context);
          }),
    );
  }

}