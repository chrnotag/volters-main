import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela23GerSim2 extends StatelessWidget {
  const Tela23GerSim2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela23GerSim2")),
        body: const Center(child: Text("Tela23GerSim2")),
      );
    });
  }
}
