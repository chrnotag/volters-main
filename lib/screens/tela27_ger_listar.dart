import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela27GerListar extends StatelessWidget {
  const Tela27GerListar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela27GerListar")),
        body: const Center(child: Text("Tela27GerListar")),
      );
    });
  }
}
