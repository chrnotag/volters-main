import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela07AssiAssinar extends StatelessWidget {
  const Tela07AssiAssinar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela07AssiAssinar")),
        body: const Center(child: Text("Tela07AssiAssinar")),
      );
    });
  }
}
