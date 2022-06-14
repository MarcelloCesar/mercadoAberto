import 'package:flutter/material.dart';

import '../constantes/paleta_cores.dart';

class HeaderBar {
  static const double appBarIconSize = 32;
  static const double iconGpsSize = 22;
  static const double spaceBewteenIcons = 6;
  static const double paddingTopAppbar = 10;
  static const double paddingLeftAppBar = 5;

  static AppBar recuperaBarraMenu(context) {
    return AppBar(
      toolbarHeight: 86,
      elevation: 0,
      backgroundColor: PaletaCores.amareloHeader1(),
      leading: Container(
        padding: const EdgeInsets.only(top: paddingTopAppbar),
        child: const Icon(
          Icons.menu,
          color: Colors.black,
          size: appBarIconSize,
        ),
      ),
      actions: [
        Container(
          width: MediaQuery.of(context).size.width -
              (2 * appBarIconSize) -
              (8 * spaceBewteenIcons),
          padding: const EdgeInsets.only(top: paddingTopAppbar),
          child: TextField(
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
        ),
        const Padding(padding: EdgeInsets.all(spaceBewteenIcons)),
        Container(
          padding: const EdgeInsets.only(top: paddingTopAppbar),
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
            size: appBarIconSize,
          ),
        ),
        const Padding(padding: EdgeInsets.all(spaceBewteenIcons)),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4.0),
        child: Container(
          color: PaletaCores.amareloHeader1(),
          height: 40.0,
          child: Row(
            children: const [
              Padding(padding: EdgeInsets.all(paddingLeftAppBar)),
              Icon(
                Icons.pin_drop_outlined,
                size: iconGpsSize,
              ),
              Padding(padding: EdgeInsets.all(paddingLeftAppBar)),
              Text("Enviar para Marcello Queiroz - Rua Jardim Paulista, 56"),
            ],
          ),
        ),
      ),
    );
  }

  static OutlineInputBorder _retornaBordaBarraPesquisa() {
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
