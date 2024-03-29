import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:provider/provider.dart';
import 'package:volters/tema.dart';
import 'package:volters/visao_usuario.dart';
import 'package:volters/uteis/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:volters/screens/tela04_assi_sim2.dart';

import '../cards/card_simulacoes_salvas.dart';

class Tela03AssiSim1 extends StatefulWidget {
  const Tela03AssiSim1({Key? key}) : super(key: key);

  @override
  _Tela03AssiSim1State createState() => _Tela03AssiSim1State();
}

class _Tela03AssiSim1State extends State<Tela03AssiSim1> {
  String nameValue = 'CEEE';
  List<String> listaItens = [
    'Mr Poladofull',
    'Shaco',
    'Fadinha sem asa',
    'Minha criatividade',
    'acabou aqui'
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(title: const Text("Simulação Assinatura")),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CardConsumo(nameValue: nameValue),
                  ),
                  Card02(
                    listaItens: listaItens,
                  ),
                ],
              ),
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
  bool _btn1 = false;
  bool _btn2 = false;
  bool _btn3 = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  LocaleKeys.assine_aqui2,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ).tr(),
              ],
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(LocaleKeys.assine_aqui).tr(),
              SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: DropdownButtonFormField(
                    alignment: Alignment.center,
                    dropdownColor: Colors.black,
                    iconSize: 20,
                    focusColor: TemaVolters.cores.primary,
                    menuMaxHeight: 200,
                    isExpanded: true,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: Colors.black,
                        filled: true,
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    value: widget.nameValue,
                    borderRadius: BorderRadius.circular(30),
                    items: <String>['CEEE', 'Light', 'Eletrobrás']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
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
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(LocaleKeys.assine_aqui2).tr(),
                SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                    shape: BoxShape.rectangle,
                  ),
                  width: 200,
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: _btn1
                                ? TemaVolters.cores.primary
                                : Colors.transparent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: InkWell(
                            child: Text(
                              'R\$',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _btn1 ? Colors.black : Colors.white,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _btn1 = !_btn1;
                                if (_btn2) {
                                  _btn2 = !_btn2;
                                }

                                if (_btn3) {
                                  _btn3 = !_btn3;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: VerticalDivider(
                            color: Colors.grey.shade100, thickness: 1),
                      ),
                      Expanded(
                        child: Container(
                            color: _btn2
                                ? TemaVolters.cores.primary
                                : Colors.transparent,
                            child: InkWell(
                              child: Text(
                                'KWh',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _btn2 ? Colors.black : Colors.white,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  _btn2 = !_btn2;
                                  if (_btn1) {
                                    _btn1 = !_btn1;
                                  }
                                  if (_btn3) {
                                    _btn3 = !_btn3;
                                  }
                                });
                              },
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: VerticalDivider(
                            color: Colors.grey.shade100, thickness: 1),
                      ),
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                color: _btn3
                                    ? TemaVolters.cores.primary
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: InkWell(
                                child: Text(
                                  '?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _btn3 ? Colors.black : Colors.white,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    _btn3 = !_btn3;
                                    if (_btn1) {
                                      _btn1 = !_btn1;
                                    }

                                    if (_btn2) {
                                      _btn2 = !_btn2;
                                    }
                                  });
                                },
                              )))
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Valor dua sua conta de luz',
                        labelText: 'Valor da sua conta de luz'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  style:
                      FilledButton.styleFrom(minimumSize: const Size(110, 40)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Tela04AssiSim2()));
                  },
                  child: Text(LocaleKeys.simule_desconto_2,
                          textAlign: TextAlign.center)
                      .tr(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//TODO FAZER BOTÃO
