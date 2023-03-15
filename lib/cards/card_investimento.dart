import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:volters/uteis/locale_keys.g.dart';
import 'package:volters/screens/tela15_inv_sim1.dart';
import 'package:volters/screens/tela20_inv_listar.dart';
import 'package:volters/screens/tela_todo.dart';
import 'package:volters/tema.dart';

Widget CardInvestimento(BuildContext context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  LocaleKeys.investimento,
                  style: TextStyle(
                    color: TemaVolters.cores.primary,
                  )).tr(),
              GestureDetector(
                onTap:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const TelaTodo()));},
                child: const Text(LocaleKeys.saiba_mais).tr(),)
            ],
          ),
          const SizedBox(height: 20),
          const Text(LocaleKeys.venha_investir).tr(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(110,40)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela15InvSim1()));},
                child: const Text(LocaleKeys.simule).tr(),
              ),
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(110,40)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela20InvListar()));},
                child: const Text(LocaleKeys.meus_investimentos,textAlign: TextAlign.center).tr(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
