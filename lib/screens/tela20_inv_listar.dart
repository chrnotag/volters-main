import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela20InvListar extends StatelessWidget {
  const Tela20InvListar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela20InvListar")),
        body: const Center(child: Text("Tela20InvListar")),
      );
    });
  }
}
