// Biblioteca para trabalhar com JSON.
import 'dart:convert';

// Biblioteca para realizar requisições HTTP.
import 'package:http/http.dart' as http;

// Importa a classe Endereco.
import '../models/endereco.dart';

// Classe responsável por acessar a API ViaCEP
class ViaCepService {

  // Busca um endereço utilizando o CEP.
Future<Endereco?> buscarPorCep(String cep) async {

  // Monta a URL da API.
  final url = Uri.parse(
    "https://viacep.com.br/ws/$cep/json",
  );

  // Faz a requisição para a API
  final resposta = await http.get(url);

  // Verifica se a resposta foi recebida com sucesso.
  if (resposta.statusCode == 200){

    // Converte o JSON recebido para um Map.
    final dados = json.decode(resposta.body);

    // Se o CEP não existir, retorna null.
    if (dados["erro"] == true) {
      return null;
    }
    // Converte o Map em um objeto Endereço.
    return Endereco.fromJson(dados);
  }

  // Caso ocorra algum erro, retorna null.
  return null;
}

// Busca endereços utilizando UF, cidade e rua.
Future<List<Endereco>> buscarPorEndereco(
  String uf,
  String cidade,
  String rua,
) async {

  //MOnta a URL da pesquisa

  final url = Uri.parse(
    "https://viacep.com.br/ws/$uf/$cidade/$rua/json/",
  );

  // Faz a requisição para a API
  final resposta = await http.get(url);

  // Verifica se a resposta foi recebida com sucesso.
  if(resposta.statusCode == 200) {

    //Converte o JSON para uma lista.
    final dados = json.decode(resposta.body);

    // Confirma se realmente foi retornada uma lista
    if (dados is List) {

      // Converte cada item da lista em um objeto Endereco.
      return dados
      .map((item) => Endereco.fromJson(item))
      .toList();
    }
  }

  // Se ocorrer algum erro, retorna uma lista vazia
  return [];
}
}