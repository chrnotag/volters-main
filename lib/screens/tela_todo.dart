import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class TelaTodo extends StatelessWidget {
  const TelaTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("TODO")),
        body: const Center(child: Text("TODO")),
      );
    });
  }
}
