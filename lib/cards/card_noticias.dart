import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:volters/uteis/locale_keys.g.dart';
import 'package:volters/screens/tela_todo.dart';
import 'package:volters/tema.dart';

Widget CardNoticias(BuildContext context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  LocaleKeys.noticias,
                  style: TextStyle(
                    color: TemaVolters.cores.primary,
                  )).tr(),
              GestureDetector(
                onTap:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const TelaTodo()));},
                child: const Text(LocaleKeys.mostrar_mais).tr(),)
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    ),
  );
}
