import 'package:bytebank/models/transferencia.dart';
import 'package:dio/dio.dart';

abstract class TransferenciaService {
  static const String _baseUrl = "http://192.168.6.2:8080/transactions";

  static Future<List<Transferencia>> findAll() async {
    final response = await Dio().get(_baseUrl);
    if (response.statusCode == 200) {
      final data = response.data as List;
      final transferencias = data.map((value) => Transferencia.fromJson(value)).toList();
      return transferencias;
    }
    return List();
  }

  static Future<Transferencia> save(Transferencia transferencia) async {
    final response = await Dio().post(
      _baseUrl,
      data: transferencia.toJson(),
      options: Options(headers: {"password": "1000"}),
    );
    return Transferencia.fromJson(response.data);
  }
}
