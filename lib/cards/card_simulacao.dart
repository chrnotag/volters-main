import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:volters/uteis/locale_keys.g.dart';
import 'package:volters/screens/tela03_assi_sim1.dart';
import 'package:volters/screens/tela10_simulacoes.dart';
import 'package:volters/screens/tela15_inv_sim1.dart';
import 'package:volters/screens/tela22_ger_sim1.dart';
import 'package:volters/screens/tela_todo.dart';

Widget CardSimulacao(BuildContext context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(LocaleKeys.simulacao).tr(),
              GestureDetector(
                onTap:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela10Simulacoes()));},
                child: const Text(LocaleKeys.historico).tr(),),
            ],
          ),
          const Divider(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(110,40)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela03AssiSim1()));},
                child: const Text(LocaleKeys.assine).tr(),
              ),
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(110,40)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela15InvSim1()));},
                child: const Text(LocaleKeys.invista).tr(),
              ),
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(110,40)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela22GerSim1()));},
                child: const Text(LocaleKeys.gere).tr(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
