import 'package:bytebank/models/contato.dart';

class Transferencia {
  final double valor;
  final Contato contato;

  Transferencia(this.contato, this.valor);

  @override
  String toString() {
    return "Transferência[Contato: ${contato.nome}, Valor: $valor]";
  }
}