import 'package:flutter/material.dart';
import 'package:mercadoaberto/constantes/estilo_texto.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';
import 'package:mercadoaberto/util/util.dart';

class CardFreteGratis extends StatelessWidget {
  const CardFreteGratis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        boxShadow: Util.retornaSombreamentoCards(),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.local_shipping_outlined,
            color: PaletaCores.verdeFreteGratis1(),
          ),
          Text(
            " Frete Grátis",
            style: EstiloTexto.textoFreteGratis1(),
          ),
          Text(
            " em milhões de produtos a partir de RS79",
            style: EstiloTexto.textoEscritaPreto1(),
          ),
        ],
      ),
    );
  }
}
