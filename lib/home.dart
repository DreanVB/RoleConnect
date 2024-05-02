import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  final bool tipo ;

  const HomePage({Key? key, required this.tipo}) : super(key: key);
  _HomePage createState() => _HomePage();
}
class _HomePage extends State {
  bool userSelected = true; // Usuário é selecionado por padrão

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
                  value: userSelected,
                  onChanged: (value) {
                    setState(() {
                     userSelected = value;
                    });
                  },
                ),
                Text('Usuario'),
              ],
            ),
            userSelected ? UserHomePage() : EstablishmentHomePage(),
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


class UserHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implementação da home do usuário com o mapa e os estabelecimentos próximos
    return Center(
      child: Text('Mapa e Estabelecimentos próximos'),
    );
  }
}

class EstablishmentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implementação da home do estabelecimento com as informações e opção de edição
    return Center(
      child: Text('Informações do Estabelecimento e Edição'),
    );
  }
}