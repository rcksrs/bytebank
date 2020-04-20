import 'package:flutter/material.dart';

class SimpleListItem extends StatelessWidget {
  final String description;
  final IconData icon;
  final String title;

  SimpleListItem(this.title, this.description, {this.icon});

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
