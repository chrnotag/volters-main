import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/cards/card_simulacao.dart';
import 'package:volters/tema.dart';
import 'package:volters/visao_usuario.dart';

class Tela15InvSim1 extends StatelessWidget {
  const Tela15InvSim1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __) {
      return Scaffold(
        appBar: AppBar(title: const Text("Simulação Investimento")),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: CardFundo(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: CardSSalva(),
              )
            ],
          ),
        ),
      );
    });
  }
}

class CardFundo extends StatefulWidget {
  const CardFundo({Key? key}) : super(key: key);

  @override
  _CardFundoState createState() => _CardFundoState();
}

class _CardFundoState extends State<CardFundo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Table(
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TableRowInkWell(
                        child: Text('Fundo Telhado'),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TableRowInkWell(
                      child: Text('Fundo Marista'),
                      onTap: () {},
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TableRowInkWell(
                      child: Text('Fundo Melnick'),
                      onTap: () {},
                    ),
                  ),
                ])
              ],
              border: TableBorder(
                  top: BorderSide(color: Colors.grey.shade200, width: 1),
                  left: BorderSide(color: Colors.grey.shade200, width: 1),
                  right: BorderSide(color: Colors.grey.shade200, width: 1),
                  bottom: BorderSide(color: Colors.grey.shade200, width: 1),
                  horizontalInside:
                      BorderSide(width: 1, color: Colors.grey.shade200)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Container(
                color: Colors.black,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Quanto você quer investir?',
                        labelText: 'Quanto você quer investir?'),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Simular',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: TemaVolters.cores.primary),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSSalva extends StatefulWidget {
  const CardSSalva({Key? key}) : super(key: key);

  @override
  _CardSSalvaState createState() => _CardSSalvaState();
}

class _CardSSalvaState extends State<CardSSalva> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
