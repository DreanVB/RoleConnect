
import 'package:flutter/material.dart';
import 'login.dart';
import 'cadastro.dart';
import 'home.dart';



void main() {
  runApp(RoleConnectApp());
}

class RoleConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RoleConnect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/cadastro': (context) => CadastroPage(),
        '/home': (context) =>UserHomePage(),
      },
    );
  }
}

// class LoginPage extends StatelessWidget {
//   final TextEditingController usuarioController = TextEditingController();
//   final TextEditingController senhaController = TextEditingController();
//   final bool isUser = true;
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//                     controller: usuarioController,
//                     decoration: InputDecoration(
//                       hintText: 'Email',
//                       filled: true,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//             TextFormField(
//                     controller: senhaController,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: 'Senha',
//                       filled: true,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//             ElevatedButton(
//                     onPressed: () 
//                     {final username = usuarioController.text;
//                     final password = senhaController.text;
//                     if (username == 'user@gmail.com' && password == '1234') {
//                       const isUser=true;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => HomePage(),
//                         ),
//                       );
//                     } else {
//                       if (username == 'estabelecimento@gmail.com' && password == '1234') {
//                         const isUser=false;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => HomePage(),
//                         ),
//                       );
//                     } else {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             backgroundColor: Colors.blue.withOpacity(0.8),
//                             title: Text(
//                               "Dados inválidos",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             content: Text(
//                               "Usuário e/ou senha incorreto(a)",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             actions: <Widget>[
//                               TextButton(
//                                 child: Text("OK"),
//                                 onPressed: () => Navigator.of(context).pop(),
//                               ),
//                             ],
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                           );
//                         },
//                       );
//                     }
//                     }
//                     },
//                     child: Text('Login',
//                     style: TextStyle(color: Colors.blue)),
//                   ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/cadastro');
//               },
//               child: Text('Cadastre-se'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// class HomePage extends StatelessWidget {
//   final bool isEstabelecimento;
//   const HomePage({Key? key, required this.isEstabelecimento}) : super(key: key);
//   @override
//   Widget build(BuildContext context) { 
  
//         if (isEstabelecimento==true)
//         {
//             Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => UserHomePage(),
//                         ),
//                       );
//         } else {
//           Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => EstablishmentHomePage(),
//                         ),
//                       );
//         }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//     );    
//   }
// }
// class HomePage extends StatefulWidget {
//   @override
//   _HomePage createState() => _HomePage();
// }
// class _HomePage extends State<CadastroPage> {
//   bool userSelected = true; // Usuário é selecionado por padrão

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cadastro'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Estabelecimeto'),
//                 Switch(
//                   value: userSelected,
//                   onChanged: (value) {
//                     setState(() {
//                      userSelected = value;
//                     });
//                   },
//                 ),
//                 Text('Usuario'),
//               ],
//             ),
//             userSelected ? UserHomePage() : EstablishmentHomePage(),
//             ElevatedButton(
//               onPressed: () {
//                 // Validação e salvamento dos dados
//                 Navigator.pushNamed(context, '/home');
//               },
//               child: Text('Cadastrar'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class UserHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Implementação da home do usuário com o mapa e os estabelecimentos próximos
//     return Center(
//       child: Text('Mapa e Estabelecimentos próximos'),
//     );
//   }
// }

// class EstablishmentHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Implementação da home do estabelecimento com as informações e opção de edição
//     return Center(
//       child: Text('Informações do Estabelecimento e Edição'),
//     );
//   }
// }

// class CadastroPage extends StatefulWidget {
//   @override
//   _CadastroPageState createState() => _CadastroPageState();
// }

// class _CadastroPageState extends State<CadastroPage> {
//   bool isUserSelected = true; // Usuário é selecionado por padrão

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cadastro'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Estabelecimeto'),
//                 Switch(
//                   value: isUserSelected,
//                   onChanged: (value) {
//                     setState(() {
//                       isUserSelected = value;
//                     });
//                   },
//                 ),
//                 Text('Usuario'),
//               ],
//             ),
//             isUserSelected ? UserForm() : EstablishmentForm(),
//             ElevatedButton(
//               onPressed: () {
//                 // Validação e salvamento dos dados
//                 Navigator.pushNamed(context, '/home');
//               },
//               child: Text('Cadastrar'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class UserForm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Nome Completo'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'CPF'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Data de Nascimento'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Telefone'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Email'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Confirmar Email'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Senha'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Confirmar Senha'),
//         ),
//       ],
//     );
//   }
// }

// class EstablishmentForm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Nome do Estabelecimento'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'CNPJ'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Telefone'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Endereço'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Horário de Funcionamento'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Email'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Confirmar Email'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Senha'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'Confirmar Senha'),
//         ),
//       ],
//     );
//   }
// }

