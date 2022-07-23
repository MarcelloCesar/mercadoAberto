import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AlertPesquisarCep extends StatelessWidget {
  AlertPesquisarCep({Key? key, required this.callback}) : super(key: key);

  final TextEditingController _campoCep = TextEditingController();
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Digite seu CEP"),
      content: TextFormField(
        controller: _campoCep,
        maxLength: 9,
      ),
      actions: [
        TextButton(
          onPressed: () => {Navigator.pop(context)},
          child: const Text("Cancelar"),
        ),
        TextButton(
          onPressed: atualizaEndereco,
          child: const Text("Ok"),
        )
      ],
    );
  }

  void atualizaEndereco() async {
    String novoEndereco = await _pesquisaCepOnline(_campoCep.text);
    String novoTexto = "Enviar para " + _campoCep.text + " - " + novoEndereco;

    callback(novoTexto);
  }

  Future<String> _pesquisaCepOnline(cep) async {
    //https://viacep.com.br/ws/17525901/json/
    String endpoint = 'https://viacep.com.br/ws/';
    String fullUrl = endpoint + cep + '/json'; // '${endpoint} +

    var resposta = await http.get(Uri.parse(fullUrl));
    var dadosResposta = jsonDecode(resposta.body);

    return dadosResposta['logradouro'];
  }
}
