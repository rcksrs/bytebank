import 'package:bytebank/models/contato.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/webclient/transferencia_service.dart';
import 'package:bytebank/widgets/form/button.dart';
import 'package:bytebank/widgets/form/input_text.dart';
import 'package:flutter/material.dart';

class NovaTransferenciaPage extends StatelessWidget {
  final _inputValor = TextEditingController();
  final Contato contato;

  NovaTransferenciaPage(this.contato);

  void _buttonEnviarPressed(BuildContext context) async {
    final valor = double.tryParse(_inputValor.text);

    if (valor != null) {
      final transferencia = Transferencia(valor, contato);
      await TransferenciaService.save(transferencia);
      Navigator.pop(context);
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
            hint: contato.nome,
            icon: Icons.person,
            enabled: false,
          ),
          InputText(
            hint: contato.conta.toString(),
            type: TextInputType.number,
            icon: Icons.account_balance_wallet,
            enabled: false,
          ),
          InputText(
            hint: "Valor",
            type: TextInputType.numberWithOptions(decimal: true, signed: false),
            icon: Icons.attach_money,
            controller: _inputValor,
          ),
          Button(text: "Enviar", onPressed: () => _buttonEnviarPressed(context))
        ],
      ),
    );
  }
}
