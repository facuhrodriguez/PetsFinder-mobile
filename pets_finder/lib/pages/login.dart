import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF646FD4),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'images/logo.png',
                  height: 250.0,
                ),
              ),
              const Text(
                '¡Bienvenido!',
                style: TextStyle(
                  color: Color(0xFFDBDFFD),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              _emailTextField(),
              const SizedBox(
                height: 15.0,
              ),
              _userTextField(),
              const SizedBox(
                height: 30.0,
              ),
              _bottonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailTextField() {
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'ejemplo@gmail.com',
              labelText: 'Correo electronico'),
          onChanged: (value) {},
        ),
      );
    },
  );
}

Widget _userTextField() {
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          style: const TextStyle(
            color: Color(0xFFDBDFFD),
          ),
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Nombre',
              labelText: 'Nombre de usuario'),
          onChanged: (value) {},
        ),
      );
    },
  );
}

final ButtonStyle style = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  elevation: 10.0,
  primary: const Color(0xFFDBDFFD),
  onPrimary: const Color(0xFF646FD4),
);

Widget _bottonLogin() {
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        style: style,
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: const Text(
            'Ingresar',
          ),
        ),
      );
    },
  );
}
