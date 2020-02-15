import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({Key key, this.hint, this.icon, this.controller, this.type}) : super(key: key);

  final String hint;
  final IconData icon;
  final TextInputType type;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade200,
        ),
        child: TextField(
          style: TextStyle(fontSize: 20),
          controller: controller,
          keyboardType: type,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            prefixIcon: icon != null ? Icon(icon, color: Colors.blue) : null,
          ),
        ),
      ),
    );
  }
}
