import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela28GerContrato extends StatelessWidget {
  const Tela28GerContrato({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela28GerContrato")),
        body: const Center(child: Text("Tela28GerContrato")),
      );
    });
  }
}
