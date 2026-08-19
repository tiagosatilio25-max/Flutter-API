class Endereco{

  //CEP do endereço.
  final String cep;

  // Nome da rua, avenida, etc.

  final String logradouro;

  // Bairro
  final String bairro;

  // Cidade
  final String cidade;

  // Estado (UF)
  final String uf;

  // Construtor da classe.

  Endereco({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.cidade,
    required this.uf,
  });

  // Converte um JSON em um objeto Endereco
  factory Endereco.fromJson(Map<String, dynamic> json) {
    return Endereco(

      //lê o CEP do JSON
      // Se não exitir, utiliza uma String vazia.
      cep: json["cep"] ?? "",

      // lê o logradouro
      logradouro: json["logradouro"] ?? "",

      //lê o bairro
      bairro: json["bairro"] ?? "",

      // Na API ViaCEP a cidade vem no campo "localidade".

      cidade: json["localidade"] ?? "",

      // lê a UF

      uf: json["uf"] ?? "",
    );
  }
}