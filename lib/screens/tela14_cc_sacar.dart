import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela14CcSacar extends StatelessWidget {
  const Tela14CcSacar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela14CcSacar")),
        body: const Center(child: Text("Tela14CcSacar")),
      );
    });
  }
}
