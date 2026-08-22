import 'package:flutter/material.dart';

// Função que cria um botão retilizável.
Widget meuBotao(
  String texto,
  VoidCallback funcao,
){

  // Adiciona um pequeno espaço abaixo do botão
  return Padding(
    padding: EdgeInsets.only(bottom: 10),

    // Define o tamanho do botão
    child: SizedBox(
      width: double.infinity,
      height: 50,

      // Botão do Material Design.
      child: ElevatedButton(

        // Função executada quando o botão é pressionado.
        onPressed: funcao,

        // Texto exibido no botão.
        child: Text(texto),
      ),
    ),
  );
}