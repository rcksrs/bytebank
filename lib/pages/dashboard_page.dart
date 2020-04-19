import 'package:bytebank/pages/contatos_page.dart';
import 'package:bytebank/widgets/dashboard_button.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

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
          DashboardButton(page: ContatosPage()),
        ],
      ),
    );
  }
}
