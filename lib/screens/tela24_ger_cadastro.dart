import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela24GerCadastro extends StatelessWidget {
  const Tela24GerCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela24GerCadastro")),
        body: const Center(child: Text("Tela24GerCadastro")),
      );
    });
  }
}
