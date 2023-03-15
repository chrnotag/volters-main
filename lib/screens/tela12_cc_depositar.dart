import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela12CcDepositar extends StatelessWidget {
  const Tela12CcDepositar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela12CcDepositar")),
        body: const Center(child: Text("Tela12CcDepositar")),
      );
    });
  }
}
