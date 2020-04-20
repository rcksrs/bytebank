import 'package:bytebank/pages/transferencias/nova_transferencia_page.dart';
import 'package:bytebank/widgets/list/simple_list.dart';
import 'package:flutter/material.dart';

class TransferenciaPage extends StatelessWidget {
  const TransferenciaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transferências")),
      body: SimpleList(null),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => NovaTransferenciaPage())),
      ),
    );
  }
}
