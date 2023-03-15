import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela21InvContrato extends StatelessWidget {
  const Tela21InvContrato({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela21InvContrato")),
        body: const Center(child: Text("Tela21InvContrato")),
      );
    });
  }
}
