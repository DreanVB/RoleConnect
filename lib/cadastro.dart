import 'package:flutter/material.dart';


class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool isUserSelected = true; // Usuário é selecionado por padrão

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Estabelecimeto'),
                Switch(
                  value: isUserSelected,
                  onChanged: (value) {
                    setState(() {
                      isUserSelected = value;
                    });
                  },
                ),
                Text('Usuario'),
              ],
            ),
            isUserSelected ? UserForm() : EstablishmentForm(),
            ElevatedButton(
              onPressed: () {
                // Validação e salvamento dos dados
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}

class UserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(labelText: 'Nome Completo'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'CPF'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Data de Nascimento'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Telefone'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Confirmar Email'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Senha'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Confirmar Senha'),
        ),
      ],
    );
  }
}

class EstablishmentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(labelText: 'Nome do Estabelecimento'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'CNPJ'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Telefone'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Endereço'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Horário de Funcionamento'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Confirmar Email'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Senha'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Confirmar Senha'),
        ),
      ],
    );
  }
}