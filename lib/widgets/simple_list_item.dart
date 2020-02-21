import 'package:flutter/material.dart';

class SimpleListItem extends StatelessWidget {
  SimpleListItem({Key key, this.icon, this.title, this.description})
      : super(key: key);

  final String description;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: icon != null ? Icon(icon) : null,
        title: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(description),
      ),
    );
  }
}
