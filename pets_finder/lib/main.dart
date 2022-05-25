import 'package:flutter/material.dart';
import 'package:pets_finder/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MascotApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
      },
    );
  }
}
