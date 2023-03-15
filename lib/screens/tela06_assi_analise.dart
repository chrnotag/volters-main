import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela06AssiAnalise extends StatelessWidget {
  const Tela06AssiAnalise({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela06AssiAnalise")),
        body: const Center(child: Text("Tela06AssiAnalise")),
      );
    });
  }
}
