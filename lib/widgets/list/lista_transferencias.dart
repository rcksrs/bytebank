import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/webclient/transferencia_service.dart';
import 'package:bytebank/widgets/list/lista_transferencia_item.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatefulWidget {
  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Transferencia>>(
      initialData: List(),
      future: TransferenciaService.findAll(),
      builder: (context, snapshot) {
        final transferencias = snapshot.data;
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[CircularProgressIndicator(), Text("Carregando...")],
            ),
          );
        }
        return transferencias != null && transferencias.isNotEmpty
            ? ListView.builder(
                itemCount: transferencias.length,
                itemBuilder: (context, i) => ListaTransferenciaItem(transferencias[i].contato.nome, transferencias[i].valor.toString()),
              )
            : Center(child: Text("Nenhuma transferência realizada"));
      },
    );
  }
}
