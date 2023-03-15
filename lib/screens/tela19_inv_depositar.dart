import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela19InvDepositar extends StatelessWidget {
  const Tela19InvDepositar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela19InvDepositar")),
        body: const Center(child: Text("Tela19InvDepositar")),
      );
    });
  }
}
