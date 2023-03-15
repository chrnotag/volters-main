import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela05AssiCadastro extends StatelessWidget {
  const Tela05AssiCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela05AssiCadastro")),
        body: const Center(child: Text("Tela05AssiCadastro")),
      );
    });
  }
}
