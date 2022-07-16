import 'package:flutter/material.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';
import 'package:mercadoaberto/util/util.dart';

class BotaoCircular extends StatelessWidget {
  const BotaoCircular(
      {Key? key,
      required this.titulo,
      required this.icone,
      required this.selected})
      : super(key: key);
  final String titulo;
  final bool selected;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: Util.retornaSombreamentoCards(),
        ),
        child: Icon(
          icone,
          size: 30,
          color: selected ? Colors.blue : PaletaCores.cinzaEscuroIcones(),
        ),
      ),
      const Padding(padding: EdgeInsets.all(4)),
      Text(
        titulo,
        style: TextStyle(
          color: selected ? Colors.blue : PaletaCores.cinzaEscuroIcones(),
          fontSize: 12,
        ),
      ),
    ]);
  }
}
