import 'package:flutter/material.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double appBarIconSize = 32;
  final double iconGpsSize = 22;
  final double spaceBewteenIcons = 6;
  final double paddingTopAppbar = 10;
  final double paddingLeftAppBar = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        elevation: 0,
        backgroundColor: PaletaCores.amareloHeader1(),
        leading: Container(
          padding: EdgeInsets.only(top: paddingTopAppbar),
          child: Icon(
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
            padding: EdgeInsets.only(top: paddingTopAppbar),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.only(top: 5),
                filled: true,
                fillColor: Colors.white,
                hintText: "Buscar no Mercado Aberto",
                prefixIcon: const Icon(Icons.search),
                border: _returnBorder(),
                focusedBorder: _returnBorder(),
                enabledBorder: _returnBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(spaceBewteenIcons)),
          Container(
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
                children: [
                  Padding(padding: EdgeInsets.all(paddingLeftAppBar)),
                  Icon(
                    Icons.pin_drop_outlined,
                    size: iconGpsSize,
                  ),
                  Padding(padding: EdgeInsets.all(paddingLeftAppBar)),
                  const Text(
                      "Enviar para Marcello Queiroz - Rua Jardim Paulista, 56"),
                ],
              )),
        ),
      ),
      drawer: Drawer(
        backgroundColor: PaletaCores.amareloHeader1(),
      ),
    );
  }

  OutlineInputBorder _returnBorder() {
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
