import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const ContactListItem(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("http://placebeard.it/100/100"),
            ),
          ),
        ),
        title: Text(title, style: TextStyle(fontSize: 18)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
