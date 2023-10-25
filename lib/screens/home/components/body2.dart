import 'package:flutter/material.dart';
import 'package:maua/model.dart/product_model.dart';
import 'package:maua/model.dart/responsive.dart';

import '../../../constants.dart';
import 'SecondPage.dart';

class BodyContainer2 extends StatefulWidget {
  const BodyContainer2({
    Key? key,
  }) : super(key: key);

  @override
  _BodyContainer2State createState() => _BodyContainer2State();
}


class _BodyContainer2State extends State<BodyContainer2> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _nickController;
  late TextEditingController _rankController;
  late TextEditingController _raController;
  late TextEditingController _personagemController;
  late TextEditingController _expController;
  late TextEditingController _dispController;

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _nickController = TextEditingController();
    _rankController = TextEditingController();
    _raController = TextEditingController();
    _personagemController = TextEditingController();
    _expController = TextEditingController();
    _dispController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column( // Adicionado um novo Column
      children: [
        Text(
          'JOGO',
          style: TextStyle(
            fontSize: 24, // Tamanho do texto
            fontWeight: FontWeight.bold, // Negrito
          ),
        ),
        Text(
          'Formulário para participar do time de ...',
          style: TextStyle(
            fontSize: 18, // Tamanho do texto
          ),
        ),
        SizedBox(height: 20), // Espaçamento entre o subtítulo e o formulário
        Container(
          padding: const EdgeInsets.all(kPadding),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(labelText: 'Sobrenome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o sobrenome.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o email.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _raController,
                  decoration: InputDecoration(labelText: 'R.A'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu ra no jogo.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _nickController,
                  decoration: InputDecoration(labelText: 'Nick no jogo'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o seu nick.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _rankController,
                  decoration: InputDecoration(labelText: 'Rank atual e maior rank'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o campo.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _personagemController,
                  decoration: InputDecoration(labelText: 'Quais sãos seus personagens de conforto (se houver)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o campo.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _expController,
                  decoration: InputDecoration(labelText: 'Há quanto tempo você joga e se ja participou competitivamente do jogo'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o campo.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _dispController,
                  decoration: InputDecoration(labelText: 'Quais dias e hora você está disponível para treinos, campeonatos e afins'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o campo.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Formulário enviado!')),
                      );
                    }
                  }, child: Text('Enviar'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }




  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _nickController.dispose();
    _rankController.dispose();
    _raController.dispose();
    _personagemController.dispose();
    _expController.dispose();
    _dispController.dispose();
    super.dispose();
  }
}
