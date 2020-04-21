import 'package:flutter/material.dart';

class ListaTransferenciaItem extends StatelessWidget {
  final String description;
  final IconData icon;
  final String title;

  ListaTransferenciaItem(this.title, this.description, {this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: icon != null ? Icon(icon) : null,
        title: Text(title, style: TextStyle(fontSize: 20)),
        subtitle: Text(description),
      ),
    );
  }
}
