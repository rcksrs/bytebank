import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final Widget page;
  const DashboardButton({Key key, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => page)),
        child: Container(
          height: 100,
          width: 120,
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.people, color: Colors.white),
              Text("Contatos", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
