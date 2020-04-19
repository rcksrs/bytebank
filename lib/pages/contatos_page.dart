import 'package:bytebank/models/contato.dart';
import 'package:bytebank/pages/novo_contato_page.dart';
import 'package:bytebank/widgets/contact_list_item.dart';
import 'package:bytebank/widgets/lista_contatos.dart';
import 'package:flutter/material.dart';

class ContatosPage extends StatelessWidget {
  // final _contas = List<Conta>();

  // void _onIconPress(BuildContext context) {
  //   final router = MaterialPageRoute<Conta>(builder: (context) => NovoContatoPage());
  //   final future = Navigator.push(context, router);
  //   future.then((conta) {
  //     if (conta != null) {
  //       debugPrint(conta.toString());
  //       _contas.add(conta);
  //     }
  //   });
  // }

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
