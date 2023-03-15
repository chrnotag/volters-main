import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela11CcExtrato extends StatelessWidget {
  const Tela11CcExtrato({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela11CcExtrato")),
        body: const Center(child: Text("Tela11CcExtrato")),
      );
    });
  }
}
