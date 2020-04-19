import 'package:bytebank/models/contato.dart';
import 'package:bytebank/widgets/button.dart';
import 'package:bytebank/widgets/input_text.dart';
import 'package:flutter/material.dart';

class NovoContatoPage extends StatelessWidget {
  final inputNome = TextEditingController();
  final inputConta = TextEditingController();

  void _buttonEnviarPressed(BuildContext context) {
    final nome = inputNome.text;
    final conta = int.tryParse(inputConta.text);

    if (nome != null && conta != null) {
      final c = Contato(1, nome, conta);
      debugPrint(c.toString());
      Navigator.pop(context, c);
    } else {
      debugPrint("Os dados informados estão inválidos");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Novo Contato")),
      body: Column(
        children: <Widget>[
          InputText(hint: "Nome Completo", icon: Icons.person, controller: inputNome),
          InputText(hint: "Conta", type: TextInputType.number, icon: Icons.attach_money, controller: inputConta),
          Button(text: "Enviar", onPressed: () => _buttonEnviarPressed(context)),
        ],
      ),
    );
  }
}
