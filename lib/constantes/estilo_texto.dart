import 'package:flutter/material.dart';
import 'package:mercadoaberto/constantes/paleta_cores.dart';

class EstiloTexto {
  static TextStyle textoFreteGratis1() {
    return TextStyle(
      color: PaletaCores.verdeFreteGratis1(),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
  }

  static TextStyle textoEscritaPreto1() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 12,
    );
  }
}
