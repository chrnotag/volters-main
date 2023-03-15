import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela26GerAssinar extends StatelessWidget {
  const Tela26GerAssinar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela26GerAssinar")),
        body: const Center(child: Text("Tela26GerAssinar")),
      );
    });
  }
}
