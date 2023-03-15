import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela17InvCadastro extends StatelessWidget {
  const Tela17InvCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela17InvCadastro")),
        body: const Center(child: Text("Tela17InvCadastro")),
      );
    });
  }
}
