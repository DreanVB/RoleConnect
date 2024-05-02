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
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
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
                Icons.logout,
              ),
              label:'Sair',
            ),
          ],
        backgroundColor: Colors.white,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
        ),
      ),
    );
  }
}


class UserHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // Implementação da home do usuário com o mapa e os estabelecimentos próximos
    return Scaffold(
      appBar: AppBar(
        title: Text('UserHome'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
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
                Icons.logout,
              ),
              label:'Sair',
            ),
          ],
        backgroundColor: Colors.white,
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
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
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
                Icons.logout,
              ),
              label:'Sair',
            ),
          ],
        backgroundColor: Colors.white,
        ),
        body: Center(
        child: Text('Informações do Estabelecimento e Edição'),
      ),
    );
  }
}