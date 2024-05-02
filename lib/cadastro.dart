import 'package:flutter/material.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';
import 'package:validadores/validadores.dart';



class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool isUserSelected = true; // Usuário é selecionado por padrão
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
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
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, '/');
                      }
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
          
          validator: (value) {
                    // Aqui entram as validações
                    return Validador()
                        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
                        .valido(value,clearNoNumber: true);
                  },
                  decoration: InputDecoration(
                    labelText: 'Nome Completo'
                  ),
        ),
        TextFormField(        
          validator: (value) {
                    // Aqui entram as validações
                    return Validador()
                        .add(Validar.CPF, msg: 'Cpf Inválido')
                        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
                        .valido(value,clearNoNumber: true);
                  },
                  decoration: InputDecoration(
                    hintText: '123.456.789-00',
                    labelText: 'Cpf'
                  ),  
        inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          CpfInputFormatter(),
        ],
        ),
        TextFormField(
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          DataInputFormatter(),
        ],
          decoration: InputDecoration(labelText: 'Data de Nascimento'),
        ),
        TextFormField(
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          TelefoneInputFormatter(),
        ],
          decoration: InputDecoration(labelText: 'Telefone'),
        ),
        TextFormField(
          
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Confirmar Email'),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(labelText: 'Senha'),
        ),
        TextFormField(
          obscureText: true,
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
          validator: (value) {
                    // Aqui entram as validações
                    return Validador()
                        .add(Validar.CNPJ, msg: 'CNPJ Inválido')
                        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
                        .minLength(14)
                        .maxLength(14)
                        .valido(value,clearNoNumber: true);

                  },
                  decoration: InputDecoration(
                    hintText: 'XX.XXX.XXX/0001-XX',
                    labelText: 'CNPJ'
                  ),
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          CnpjInputFormatter(),
        ],
        ),
        TextFormField(
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          TelefoneInputFormatter(),
        ],
          decoration: InputDecoration(labelText: 'Telefone'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Rua'),
        ),
        TextFormField(
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,],
          decoration: InputDecoration(labelText: 'Numero'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Bairro'),
        ),
        TextFormField(
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          CepInputFormatter()],
          decoration: InputDecoration(labelText: 'Cep'),
        ),
        TextFormField(
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          HoraInputFormatter()],
          decoration: InputDecoration(labelText: 'Abre às '),
        ),
        TextFormField(
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          HoraInputFormatter()],
          decoration: InputDecoration(labelText: 'Fecha às '),
        ),
        TextFormField(validator: (value) {
                    return Validador()
                        .add(Validar.EMAIL, msg: 'Email Inválido')
                        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
                        .valido(value,clearNoNumber: true);
                  },
                  decoration: InputDecoration(
                    hintText: 'estabelecimento@gmail.com',
                    labelText: 'Email'
                  ),
                ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Confirmar Email'),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(labelText: 'Senha'),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(labelText: 'Confirmar Senha'),
        ),
      ],
    );
  }
}