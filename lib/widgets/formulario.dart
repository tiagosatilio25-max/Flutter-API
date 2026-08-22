import 'package:flutter/material.dart';

// Importa o componente de campo de texto criado
import 'campos.dart';

// Função que monta o formulário de acordo com o tipo de busca.

Widget meuFormulario(
  bool buscarPorCep,
  TextEditingController controladorCep,
  TextEditingController controladorUF,
  TextEditingController controladorCidade,
  TextEditingController controladorRua,
) {

  // Verifica se a busca escolhida é por CEP.

  if (buscarPorCep) {

    // Retorna apenas um campo para digitar o CEP.
    return meuCampoTexto(
      controladorCep,
      "Digite o CEP",
      Icons.location_on,
    );
  }

  // Caso a busca seja por endereço,
  // Retorna vários campos organizados em uma coluna.
  return Column(
    children: [

      // Campo para informas o estado
      meuCampoTexto(
        controladorUF,
        "UF (ex: SP)",
        Icons.map,

      ),
      // Campo para informar a cidade
      meuCampoTexto(
        controladorCidade,
        "Cidade",
        Icons.location_city,
      ),
      // Campo para informar a rua
      meuCampoTexto(
        controladorRua,
        "Rua",
        Icons.signpost,
      ),
    ],
  );
}