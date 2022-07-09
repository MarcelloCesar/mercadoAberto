import 'package:flutter/material.dart';
import 'package:mercadoaberto/componentes/header_bar.dart';
import 'package:mercadoaberto/constantes/estilo_texto.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBar.recuperaBarraMenu(context),
      drawer: Drawer(
        backgroundColor: PaletaCores.amareloHeader1(),
      ),
      backgroundColor: PaletaCores.fundoCinza1(),
      body: Container(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: const FractionalOffset(0.5, 0.2),
            colors: [
              PaletaCores.amareloHeader1(),
              PaletaCores.fundoCinza1(),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              height: 200,
              child: PageView.builder(
                itemCount: 2,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset('assets/promo1.png'),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      PaletaCores.roxoAssinatura1(),
                      PaletaCores.azulAssinatura1()
                    ]),
                boxShadow: _retornaBoxShadow(),
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
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                boxShadow: _retornaBoxShadow(),
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
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _retornaBotao('Recarregar', Icons.phone_iphone, false),
                _retornaBotao('Ofertas', Icons.sell, true),
                _retornaBotao('Mercado', Icons.shopping_basket_outlined, false),
                _retornaBotao('Veículos', Icons.directions_car_outlined, false),
                _retornaBotao('Ver Mais', Icons.add, false),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<BoxShadow> _retornaBoxShadow() {
    return [
      BoxShadow(
        color: Colors.grey.withOpacity(0.4),
        spreadRadius: 0.5,
        blurRadius: 2,
        offset: const Offset(0, 1.5),
      ),
    ];
  }

  Widget _retornaBotao(String Titulo, icone, bool selected) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: _retornaBoxShadow(),
        ),
        child: Icon(
          icone,
          size: 30,
          color: selected ? Colors.blue : PaletaCores.cinzaEscuroIcones(),
        ),
      ),
      const Padding(padding: EdgeInsets.all(4)),
      Text(
        Titulo,
        style: TextStyle(
          color: selected ? Colors.blue : PaletaCores.cinzaEscuroIcones(),
          fontSize: 12,
        ),
      ),
    ]);
  }
}
