import 'package:bytebank/config/database_config.dart';
import 'package:bytebank/models/contato.dart';
import 'package:bytebank/pages/transferencias/nova_transferencia_page.dart';
import 'package:bytebank/widgets/list/contact_list_item.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  @override
  _ListaContatosState createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Contato>>(
      initialData: List(),
      future: DatabaseConfig.findAll(),
      builder: (context, snapshot) {
        final contatos = snapshot.data;
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[CircularProgressIndicator(), Text("Carregando...")],
            ),
          );
        }
        return contatos != null && contatos.isNotEmpty
            ? ListView.builder(
                itemCount: contatos.length,
                itemBuilder: (context, i) => ContactListItem(contatos[i], onClick: () {
                    final router = MaterialPageRoute(builder: (context) => NovaTransferenciaPage(contatos[i]));
                    Navigator.of(context).push(router);
                  },
                ),
              )
            : Center(child: Text("Nenhum contato foi encontrado"));
      },
    );
  }
}
