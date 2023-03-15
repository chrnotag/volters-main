import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela09AssiContrato extends StatelessWidget {
  const Tela09AssiContrato({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela09AssiContrato")),
        body: const Center(child: Text("Tela09AssiContrato")),
      );
    });
  }
}
