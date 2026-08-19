// Biblioteca dos componentes visuais do Flutter.
import 'package:flutter/material.dart';

// Função que cria um campo de texto reutilizável.
Widget meuCampoTexto(
  TextEditingController controller,
  String texto,
  IconData icone,
) {

  // Adiciona um pequeno espaço abaixo do campo
  return Padding(
    padding: EdgeInsets.only(bottom: 14),

    // Campo de entrada de texto.
    child: TextField(
      //Controla o texto digitado pelo usuário.
      controller: controller,

      // Personaliza a aparência do campo.
      decoration: InputDecoration(

        // Texto exibido dentro do campo
        labelText: texto,

        // ícone exibido à esquerda
        prefixIcon: Icon(icone),

        // Borda do campo
        border: OutlineInputBorder(

          // Arredonda os cantos.
          borderRadius: BorderRadius.circular(12),
        )
      ),
    ),
  );

}