import 'package:bytebank/models/contato.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/widgets/form/button.dart';
import 'package:bytebank/widgets/form/input_text.dart';
import 'package:flutter/material.dart';

class NovaTransferenciaPage extends StatelessWidget {
  final inputContaController = TextEditingController();
  final inputValorController = TextEditingController();

  void _buttonEnviarPressed(BuildContext context) {
    final conta = int.tryParse(inputContaController.text);
    final valor = double.tryParse(inputValorController.text);

    if (conta != null && valor != null) {
      debugPrint("Conta: $conta, Valor: $valor");
      Navigator.pop(context, Transferencia(Contato("Teste", conta), valor));
    } else {
      debugPrint("Os dados informados estão inválidos");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transferência')),
      body: Column(
        children: <Widget>[
          InputText(
            hint: "Número da Conta",
            type: TextInputType.number,
            icon: Icons.account_balance_wallet,
            controller: inputContaController,
          ),
          InputText(
            hint: "Valor",
            type: TextInputType.numberWithOptions(decimal: true, signed: false),
            icon: Icons.attach_money,
            controller: inputValorController,
          ),
          Button(text: "Enviar", onPressed: () => _buttonEnviarPressed(context))
        ],
      ),
    );
  }
}
