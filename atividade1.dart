import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício ThemeData',
      
      theme: ThemeData(
         
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Widget com Fundo Azul',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}