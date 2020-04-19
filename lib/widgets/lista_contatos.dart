import 'package:bytebank/config/database_config.dart';
import 'package:bytebank/models/contato.dart';
import 'package:bytebank/widgets/simple_list_item.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DatabaseConfig().findAll(),
      builder: (context, snapshot) {
        final List<Contato> contatos = snapshot.data;
        return ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (context, i) => SimpleListItem(contatos[i].nome, contatos[i].conta.toString()),
        );
      },
    );
  }
}
