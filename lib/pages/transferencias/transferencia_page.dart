import 'package:bytebank/widgets/list/lista_transferencias.dart';
import 'package:flutter/material.dart';

class TransferenciaPage extends StatelessWidget {
  const TransferenciaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transferências")),
      body: ListaTransferencias(),
    );
  }
}
