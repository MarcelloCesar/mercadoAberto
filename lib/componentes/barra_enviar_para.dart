import 'package:flutter/material.dart';
import 'package:mercadoaberto/componentes/alert_pesquisa_cep.dart';
import '../constantes/paleta_cores.dart';

class BarraEnviarPara extends StatefulWidget implements PreferredSizeWidget {
  const BarraEnviarPara({Key? key}) : super(key: key);

  @override
  State<BarraEnviarPara> createState() => _BarraEnviarParaState();

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

class _BarraEnviarParaState extends State<BarraEnviarPara> {
  String textoEnviarPara = "Enviar para 17525901";

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(4.0),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => AlertPesquisarCep(callback: (novoTexto) {
              setState(() {
                textoEnviarPara = novoTexto;
              });
              Navigator.pop(context);
            }),
          );
        },
        child: Container(
          color: PaletaCores.amareloHeader1(),
          height: 40.0,
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.all(5)),
              const Icon(
                Icons.pin_drop_outlined,
                size: 22,
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Text(textoEnviarPara),
            ],
          ),
        ),
      ),
    );
  }
}
