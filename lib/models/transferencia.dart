import 'package:bytebank/models/contato.dart';

class Transferencia {
  String id;
  double valor;
  Contato contato;

  Transferencia(this.valor, this.contato, {this.id});

  Transferencia.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    valor = json['value'];
    contato = json['contact'] != null ? new Contato.fromJson(json['contact']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['value'] = this.valor;
    if (this.contato != null) {
      data['contact'] = this.contato.toJson();
    }
    return data;
  }
}
