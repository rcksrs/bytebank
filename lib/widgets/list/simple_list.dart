import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/widgets/list/simple_list_item.dart';
import 'package:flutter/material.dart';

class SimpleList extends StatefulWidget {
  final List<Transferencia> transferencias;

  SimpleList(this.transferencias);

  @override
  _SimpleListState createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  @override
  Widget build(BuildContext context) {
    return widget.transferencias == null || widget.transferencias.isEmpty
        ? Center(child: Text("Nenhuma transferência realizada"))
        : ListView.builder(
            itemCount: widget.transferencias.length,
            itemBuilder: (context, index) {
              final transferencia = widget.transferencias[index];
              return SimpleListItem(transferencia.contato.nome, transferencia.valor.toString());
            });
  }
}
