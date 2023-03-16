import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../tema.dart';
import '../uteis/locale_keys.g.dart';

class Card02 extends StatefulWidget {
  final List<String> listaItens;

  Card02({Key? key, required this.listaItens}) : super(key: key);

  @override
  _Card02State createState() => _Card02State();
}

class _Card02State extends State<Card02> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(LocaleKeys.simule_part2,
                style: TextStyle(
                  fontSize: 20,
                )).tr(),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: widget.listaItens.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: TemaVolters.cores.primary),
                          child: Center(
                            child: Text(
                              index.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(widget.listaItens[index]),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
