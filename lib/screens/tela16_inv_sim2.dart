import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/screens/tela17_inv_cadastro.dart';
import 'package:volters/tema.dart';
import 'package:volters/visao_usuario.dart';

class Tela16InvSim2 extends StatelessWidget {
  const Tela16InvSim2

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __) {
      return Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    height: 250,
                    width: 350,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Simulação Fundo Telhado',
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Valor aplicado:',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  'R\$ 10.000,00',
                                  style: TemaVolters.textStyleGrande,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text('Seu retorno será de:'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '1% a.m',
                                      style: TemaVolters.textStylePequeno,
                                    ),
                                    Text('+ inflação'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Tela17InvCadastro()));
                            },
                            style: TemaVolters.temaButton.style,
                            child: const Text(
                              'Invista agora',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: TemaVolters.temaButton.style,
                                child: const Text(
                                  'NOVA',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: TemaVolters.temaButton.style,
                                child: const Text(
                                  'SALVAR',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Teste de investimentos: exemplo de alguma coisa que deu errado ou sei lá oque tanto faz',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
