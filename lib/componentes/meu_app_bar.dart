import 'package:flutter/material.dart';
import 'package:mercadoaberto/componentes/barra_enviar_para.dart';
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
  static const double spaceBewteenIcons = 6;
  static const double paddingTopAppbar = 10;

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
      bottom: BarraEnviarPara(),
    );
  }
}
