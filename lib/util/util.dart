import 'package:flutter/material.dart';

class Util {
  static List<BoxShadow> retornaSombreamentoCards() {
    return [
      BoxShadow(
        color: Colors.grey.withOpacity(0.4),
        spreadRadius: 0.5,
        blurRadius: 2,
        offset: const Offset(0, 1.5),
      )
    ];
  }
}
