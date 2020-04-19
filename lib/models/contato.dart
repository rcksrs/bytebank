class Contato {
  int id;
  String nome;
  int conta;

  Contato(this.id, this.nome, this.conta);

  Contato.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    conta = json['conta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['conta'] = this.conta;
    return data;
  }
}