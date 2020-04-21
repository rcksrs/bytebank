import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextInputType type;
  final TextEditingController controller;
  final bool enabled;

  const InputText({Key key, this.hint, this.icon, this.controller, this.type, this.enabled = true}) : super(key: key);  

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
          enabled: enabled,
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
