import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tela02_home.dart';
import 'package:volters/visao_usuario.dart';
import 'package:volters/uteis/locale_keys.g.dart';

class Tela01Tandan extends StatelessWidget {
  const Tela01Tandan({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(LocaleKeys.tandan).tr(),
              const SizedBox(height:40),
              FilledButton(
                  onPressed: (){
                    // aqui usamos pushReplacement para o batao "back" não retornar para essa pagina...
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Tela02Home()));
                  },
                  child: const Text(LocaleKeys.tandan_entrar).tr(),
              ),
            ],
          )
        ),
      );
    });
  }
}
