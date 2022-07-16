import 'package:flutter/material.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';

class BarraPesquisa extends StatefulWidget {
  const BarraPesquisa({Key? key}) : super(key: key);

  @override
  State<BarraPesquisa> createState() => _BarraPesquisaState();
}

class _BarraPesquisaState extends State<BarraPesquisa> {
  static const double appBarIconSize = 32;
  static const double spaceBewteenIcons = 6;
  static const double paddingTopAppbar = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width -
          (2 * appBarIconSize) -
          (8 * spaceBewteenIcons),
      padding: const EdgeInsets.only(top: paddingTopAppbar),
      child: TextField(
        onSubmitted: (test) => {},
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.only(top: 5),
          filled: true,
          fillColor: Colors.white,
          hintText: "Buscar no Mercado Aberto",
          prefixIcon: const Icon(Icons.search),
          border: _retornaBordaBarraPesquisa(),
          focusedBorder: _retornaBordaBarraPesquisa(),
          enabledBorder: _retornaBordaBarraPesquisa(),
        ),
      ),
    );
  }

  OutlineInputBorder _retornaBordaBarraPesquisa() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: PaletaCores.amareloHeader1(),
        width: 0,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(30.0),
      ),
    );
  }
}
