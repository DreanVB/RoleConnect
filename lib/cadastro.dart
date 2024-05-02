import 'package:flutter/material.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';



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
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,),
              label:'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_support,
              ),
              label:'Ajuda',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
              ),
              label:'Entrar',
            ),
          ],
        backgroundColor: Colors.white,
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
                Navigator.pushNamed(context, '/');
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
        inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          CpfInputFormatter(),
        ],
          decoration: InputDecoration(labelText: 'CPF'),
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
          inputFormatters: [     
          FilteringTextInputFormatter.digitsOnly,     
          CnpjInputFormatter(),
        ],
          decoration: InputDecoration(labelText: 'CNPJ'),
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