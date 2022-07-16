import "package:flutter/material.dart";
import "package:mercadoaberto/constantes/paleta_cores.dart";
import 'package:mercadoaberto/util/util.dart';

class CardAssinatura extends StatefulWidget {
  const CardAssinatura({Key? key}) : super(key: key);

  @override
  State<CardAssinatura> createState() => _CardAssinaturaState();
}

class _CardAssinaturaState extends State<CardAssinatura> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              PaletaCores.roxoAssinatura1(),
              PaletaCores.azulAssinatura1()
            ]),
        boxShadow: Util.retornaSombreamentoCards(),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Assine o nível 6 por R\$ 9,90/mês!",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
