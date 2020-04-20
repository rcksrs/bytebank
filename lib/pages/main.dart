import 'package:bytebank/pages/contatos/contatos_page.dart';
import 'package:bytebank/pages/transferencias/transferencia_page.dart';
import 'package:bytebank/widgets/form/dashboard_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/bytebank_logo.png'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                DashboardButton("Contatos", icon: Icons.monetization_on, page: ContatosPage()),
                DashboardButton("Transferências", icon: Icons.description, page: TransferenciaPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
