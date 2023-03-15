import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'tela11_cc_extrato.dart';
import 'tela_todo.dart';
import 'package:volters/tema.dart';
import 'package:volters/visao_usuario.dart';
import 'package:volters/cards/card_simulacao.dart';
import 'package:volters/cards/card_assinatura.dart';
import 'package:volters/cards/card_investimento.dart';
import 'package:volters/cards/card_geracao.dart';
import 'package:volters/cards/card_noticias.dart';
import 'package:volters/cards/card_conteudo.dart';
import 'package:volters/uteis/locale_keys.g.dart';

class Tela02Home extends StatelessWidget {
  const Tela02Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __) {
      return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: 40,
            width: 300,
            child: Ink.image(
              image: const AssetImage("assets/images/logo-volters.png"),
              fit: BoxFit.contain,
            ),
          ),
          actions: [

            GestureDetector(
              onTap:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela11CcExtrato()));},
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    LocaleKeys.saldo,
                  ).tr(),
                  Text(
                    NumberFormat.simpleCurrency().format(1000),
                    style: TextStyle(
                      color: TemaVolters.cores.primary,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none, size: 40),
              onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const TelaTodo()));},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle_rounded, size: 40),
              onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const TelaTodo()));},
            ),
          ],
        ),
        body: Center(
          child: SizedBox(
            width: 400,
            height: double.infinity,
            child: ListView(
              children: [
                const SizedBox(height: 20),
                CardSimulacao(context),
                const SizedBox(height: 20),
                CardAssinatura(context),
                const SizedBox(height: 20),
                CardInvestimento(context),
                const SizedBox(height: 20),
                CardGeracao(context),
                const SizedBox(height: 20),
                CardNoticias(context),
                const SizedBox(height: 20),
                CardConteudo(context),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );
    });
  }
}