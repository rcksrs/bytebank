import 'package:bytebank/pages/transferencia_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  static const String routeName = '/main';

  void _onIconPress(BuildContext context) {
    final router = MaterialPageRoute(builder: (context) => TransferenciaPage());
    final future = Navigator.push(context, router);
    future.then((value) {
      debugPrint("Voltou!!!");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Bytebank")),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: () => _onIconPress(context)),
      ),
    );
  }
}
