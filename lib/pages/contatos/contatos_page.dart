import 'package:bytebank/pages/contatos/novo_contato_page.dart';
import 'package:bytebank/widgets/list/lista_contatos.dart';
import 'package:flutter/material.dart';

class ContatosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contatos")),
      body: ListaContatos(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => NovoContatoPage())),
      ),
    );
  }
}
