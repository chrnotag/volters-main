import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';
import 'package:volters/uteis/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:volters/screens/tela04_assi_sim2.dart';

class Tela03AssiSim1 extends StatefulWidget {
  const Tela03AssiSim1({Key? key}) : super(key: key);

  @override
  _Tela03AssiSim1State createState() => _Tela03AssiSim1State();
}

class _Tela03AssiSim1State extends State<Tela03AssiSim1> {
  String nameValue = 'CEEE';

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(title: const Text("Simulação Assinatura")),
        body: Center(
          child: SizedBox(
            width: 400,
            height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CardConsumo(nameValue: nameValue),
                ),
                Card02(),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class CardConsumo extends StatefulWidget {
  String nameValue;
  CardConsumo({Key? key, required this.nameValue}) : super(key: key);

  @override
  _CardConsumoState createState() => _CardConsumoState();
}

class _CardConsumoState extends State<CardConsumo> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                LocaleKeys.assine_aqui2,
                style:
                TextStyle(fontSize: 20, color: Colors.white),
              ).tr(),
            ],
          ),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(LocaleKeys.assine_aqui).tr(),
                SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 200,
                  child: DropdownButtonFormField(
                      alignment: Alignment.center,
                      dropdownColor: Colors.black,
                      iconSize: 30,
                      isExpanded: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      value: widget.nameValue,
                      borderRadius: BorderRadius.circular(30),
                      items: <String>[
                        'CEEE',
                        'Light',
                        'Eletrobrás'
                      ].map<DropdownMenuItem<String>>(
                              (String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          widget.nameValue = newValue!;
                        });
                      }),
                )
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(LocaleKeys.assine_aqui2).tr(),
              ]),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                    minimumSize: const Size(110, 40)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const Tela04AssiSim2()));
                },
                child: Text(LocaleKeys.simule_desconto_2,
                    textAlign: TextAlign.center)
                    .tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



//segundo card da tela 1

class Card02 extends StatefulWidget {
  const Card02({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.simule_part2,
                    style: TextStyle(
                      fontSize: 20,
                    )).tr(),
              ],
            ),
            const SizedBox(height: 20),
            Text(LocaleKeys.assinatura_tela03_part2).tr(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}


//TODO FAZER BOTÃO
