import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela25GerAnalise extends StatelessWidget {
  const Tela25GerAnalise({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela25GerAnalise")),
        body: const Center(child: Text("Tela25GerAnalise")),
      );
    });
  }
}
