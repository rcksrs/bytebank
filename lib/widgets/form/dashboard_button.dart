import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget page;

  const DashboardButton(this.text, {Key key, this.icon, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
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
              Icon(icon, color: Colors.white),
              Text(text, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
