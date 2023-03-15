import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela15InvSim1 extends StatelessWidget {
  const Tela15InvSim1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela15InvSim1")),
        body: const Center(child: Text("Tela15InvSim1")),
      );
    });
  }
}
