import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/pages/transferencia_page.dart';
import 'package:bytebank/widgets/simple_list.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  static const String routeName = '/main';

  final _transferencias = List<Transferencia>();

  void _onIconPress(BuildContext context) {
    final router = MaterialPageRoute<Transferencia>(
        builder: (context) => TransferenciaPage());
    final future = Navigator.push(context, router);
    future.then((transferencia) {
      if(transferencia != null){
        debugPrint(transferencia.toString());
        _transferencias.add(transferencia);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Bytebank")),
        body: SimpleList(_transferencias),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: () => _onIconPress(context)),
      ),
    );
  }
}
