import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela22GerSim1 extends StatelessWidget {
  const Tela22GerSim1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela22GerSim1")),
        body: const Center(child: Text("Tela22GerSim1")),
      );
    });
  }
}
