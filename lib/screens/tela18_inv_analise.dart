import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela18InvAnalise extends StatelessWidget {
  const Tela18InvAnalise({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela18InvAnalise")),
        body: const Center(child: Text("Tela18InvAnalise")),
      );
    });
  }
}
