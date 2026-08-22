// Biblioteca dos componentes visuais do flutter.
import 'package:flutter/material.dart';


// Função que cria o seletor do tipo busca.
Widget meuSeletor(
  bool buscarPorCep,
  ValueChanged<Set<bool>> alterarBusca,
) {

  // SegmentedButton permite escolher uma entre várias opções.
  return SegmentedButton<bool>(

    //Lista de opções do seletor.
    segments: const [

      // Primeira opção.

      ButtonSegment(
        value: true,
        label: Text("Por CEP"),
        icon: Icon(Icons.pin_drop),
      ),
    ],

    // Define qual opção esta selecionada.
    selected: {buscarPorCep},

    // Executa uma função quando o usuario troca a opção.
    onSelectionChanged: alterarBusca,
  );
}