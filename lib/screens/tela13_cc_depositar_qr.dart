import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela13CcDepositarQr extends StatelessWidget {
  const Tela13CcDepositarQr({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela13CcDepositarQr")),
        body: const Center(child: Text("Tela13CcDepositarQr")),
      );
    });
  }
}
