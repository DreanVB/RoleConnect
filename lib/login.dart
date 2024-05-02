import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final bool isUser = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
            TextField(
                    controller: usuarioController,
                    decoration: InputDecoration(
                      hintText: 'Usuarios: user1, user2',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
            TextFormField(
                    controller: senhaController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'SenhaPadrão: 1234',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
            ElevatedButton(
                    onPressed: () 
                    {final username = usuarioController.text;
                    final password = senhaController.text;
                    if (username == 'user1' && password == '1234') {                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserHomePage(),
                        ),
                      );
                    } else {
                      if (username == 'user2' && password == '1234') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EstablishmentHomePage(),
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.blue.withOpacity(0.8),
                            title: Text(
                              "Dados inválidos",
                              style: TextStyle(color: Colors.white),
                            ),
                            content: Text(
                              "Usuário e/ou senha incorreto(a)",
                              style: TextStyle(color: Colors.white),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text("OK"),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          );
                        },
                      );
                    }
                    }
                    },
                    child: Text('Login',
                    ),
                  ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
              child: Text('Cadastre-se'),
            ),
          ],
        ),
      ),
    );
  }
}
