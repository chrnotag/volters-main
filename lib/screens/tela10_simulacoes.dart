import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela10Simulacoes extends StatelessWidget {
  const Tela10Simulacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela10Simulacoes")),
        body: const Center(child: Text("Tela10Simulacoes")),
      );
    });
  }
}
