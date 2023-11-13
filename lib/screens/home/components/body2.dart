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
          'Formulário para participar da equipe:',
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
                  style: TextStyle(fontSize: 20),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(labelText: 'Sobrenome'),
                  style: TextStyle(fontSize: 20),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o sobrenome.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  style: TextStyle(fontSize: 20),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o email.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _raController,
                  decoration: InputDecoration(labelText: 'R.A'),
                  style: TextStyle(fontSize: 20),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu RA .';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _nickController,
                  decoration: InputDecoration(labelText: 'Nick no jogo'),
                  style: TextStyle(fontSize: 20),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o seu nick.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _rankController,
                  decoration: InputDecoration(labelText: 'Rank atual e maior rank'),
                  style: TextStyle(fontSize: 20),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o campo.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                controller: _personagemController,
                decoration: InputDecoration(labelText: 'Personagens de conforto (se houver)'),
                style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _expController,
                  decoration: InputDecoration(labelText: 'Tempo de jogo e experiência competitiva'),
                  style: TextStyle(fontSize: 20),
                  maxLines: null,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o campo.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _dispController,
                  decoration: InputDecoration(labelText: 'Dias e horário disponíveis na semana'),
                  style: TextStyle(fontSize: 20),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o campo.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Formulário enviado!')),
                      );
                      _formKey.currentState!.reset();
                    }
                  }, child: Text('Enviar'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    primary: kPrimaryColor,
                  ),
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
