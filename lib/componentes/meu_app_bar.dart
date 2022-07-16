import 'package:flutter/material.dart';
import 'package:mercadoaberto/componentes/barra_pesquisa.dart';

import '../constantes/paleta_cores.dart';

class MeuAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MeuAppBar({Key? key}) : super(key: key);

  @override
  State<MeuAppBar> createState() => _MeuAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(90);
}

class _MeuAppBarState extends State<MeuAppBar> {
  static const double appBarIconSize = 32;
  static const double iconGpsSize = 22;
  static const double spaceBewteenIcons = 6;
  static const double paddingTopAppbar = 10;
  static const double paddingLeftAppBar = 5;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 86,
      elevation: 0,
      backgroundColor: PaletaCores.amareloHeader1(),
      leading: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: appBarIconSize,
          ),
        ),
      ),
      actions: const [
        BarraPesquisa(),
        Padding(padding: EdgeInsets.all(spaceBewteenIcons)),
        Padding(
          padding: EdgeInsets.only(top: paddingTopAppbar),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
            size: appBarIconSize,
          ),
        ),
        Padding(padding: EdgeInsets.all(spaceBewteenIcons)),
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
}
