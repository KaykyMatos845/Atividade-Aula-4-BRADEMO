import 'package:flutter/material.dart';

void main() => runApp(const MeuApp());

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Tema',
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tema Padrão (Azul)',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 50),
            Theme(
              data: Theme.of(
                context,
              ).copyWith(scaffoldBackgroundColor: Colors.yellow),
              child: const CardAmarelo(),
            ),
          ],
        ),
      ),
    );
  }
}

class CardAmarelo extends StatelessWidget {
  const CardAmarelo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: const Text(
        'Tema Sobrescrito (Amarelo)',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
