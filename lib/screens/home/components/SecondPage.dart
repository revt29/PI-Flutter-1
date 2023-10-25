import 'package:flutter/material.dart';
import 'package:maua/botaovoltar.dart';
import 'package:maua/constants.dart';
import 'package:maua/screens/home/home_screen2.dart';

class SecondPage extends StatelessWidget {
  const SecondPage ({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      toolbarHeight: 120,
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo.png', // Substitua com o caminho da sua imagem
        height: 80,
        width: 300, // Ajuste a altura conforme necessário
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop(); // Este é o comando para voltar para a página anterior
        },
      ),
    ),
    body: HomeScreen2(),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Adicione o código para o botão flutuante aqui
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.blue, // Ajuste a cor conforme necessário
    ),
  );
}



}