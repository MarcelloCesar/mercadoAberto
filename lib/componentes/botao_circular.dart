import 'package:flutter/material.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';
import 'package:mercadoaberto/util/util.dart';

class BotaoCircular extends StatefulWidget {
  const BotaoCircular({Key? key, required this.titulo, required this.icone})
      : super(key: key);

  final String titulo;
  final IconData icone;

  @override
  State<BotaoCircular> createState() => _BotaoCircularState();
}

class _BotaoCircularState extends State<BotaoCircular> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(
          () => {selected = !selected},
        )
      },
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: Util.retornaSombreamentoCards(),
          ),
          child: Icon(
            widget.icone,
            size: 30,
            color: selected ? Colors.blue : PaletaCores.cinzaEscuroIcones(),
          ),
        ),
        const Padding(padding: EdgeInsets.all(4)),
        Text(
          widget.titulo,
          style: TextStyle(
            color: selected ? Colors.blue : PaletaCores.cinzaEscuroIcones(),
            fontSize: 12,
          ),
        ),
      ]),
    );
  }
}
