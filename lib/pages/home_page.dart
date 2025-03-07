import 'package:flutter/material.dart';
import 'package:mercadoaberto/componentes/botao_circular.dart';
import 'package:mercadoaberto/componentes/card_assinatura.dart';
import 'package:mercadoaberto/componentes/card_frete_gratis.dart';
import 'package:mercadoaberto/componentes/menu_lateral.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';
import '../componentes/meu_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MeuAppBar(),
      drawer: const MenuLateral(),
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
            const CardAssinatura(),
            const Padding(padding: EdgeInsets.all(5)),
            const CardFreteGratis(),
            const Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BotaoCircular(titulo: 'Recarregar', icone: Icons.phone_iphone),
                BotaoCircular(titulo: 'Ofertas', icone: Icons.sell),
                BotaoCircular(
                  titulo: 'Mercado',
                  icone: Icons.shopping_basket_outlined,
                ),
                BotaoCircular(
                  titulo: 'Veículos',
                  icone: Icons.directions_car_outlined,
                ),
                BotaoCircular(
                  titulo: 'Ver Mais',
                  icone: Icons.add,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
