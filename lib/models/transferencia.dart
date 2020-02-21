class Transferencia {
  final int conta;
  final double valor;

  Transferencia(this.conta, this.valor);

  @override
  String toString() {
    return "Transferência[Conta: $conta, Valor: $valor]";
  }
}