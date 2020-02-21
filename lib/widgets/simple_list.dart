import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/widgets/simple_list_item.dart';
import 'package:flutter/material.dart';

class SimpleList extends StatefulWidget {
  SimpleList(this.transferencias);

  final List<Transferencia> transferencias;

  @override
  _SimpleListState createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.transferencias.length,
        itemBuilder: (context, index) {
          final transferencia = widget.transferencias[index];
          return SimpleListItem(
            title: "Tranferência recebida da conta ${transferencia.conta}",
            description: "Valor: ${transferencia.valor} reais",
          );
        });
  }
}
