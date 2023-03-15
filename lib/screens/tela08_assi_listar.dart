import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela08AssiListar extends StatelessWidget {
  const Tela08AssiListar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela08AssiListar")),
        body: const Center(child: Text("Tela08AssiListar")),
      );
    });
  }
}
