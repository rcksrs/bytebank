import 'package:bytebank/models/contato.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  final Contato contato;
  final Function onClick;

  const ContactListItem(this.contato, {this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => onClick(),
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
        title: Text(contato.nome, style: TextStyle(fontSize: 18)),
        subtitle: Text(contato.conta.toString()),
      ),
    );
  }
}
