import 'package:flutter/material.dart';


class UserHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // Implementação da home do usuário com o mapa e os estabelecimentos próximos
    return Scaffold(
      appBar: AppBar(
        title: Text('UserHome'),
      ),
      body: Center(
        child: Text('Mapa e Estabelecimentos próximos')
      ),
    );
  }
}

class EstablishmentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implementação da home do estabelecimento com as informações e opção de edição
    // return Center(
    //   child: Text('Informações do Estabelecimento e Edição'),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('EstabelecimentoHome'),
      ),
    );
  }
}