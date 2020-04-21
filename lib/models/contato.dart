class Contato {
  int id;
  String nome;
  int conta;

  Contato(this.nome, this.conta, {this.id});

  Contato.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['name'];
    conta = json['accountNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.nome;
    data['accountNumber'] = this.conta;
    return data;
  }
}