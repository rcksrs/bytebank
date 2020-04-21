import 'package:bytebank/models/contato.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class DatabaseConfig {
  static Future<Database> _getDatabase() async {
    final path = join(await getDatabasesPath(), "bytebank.db");    
    return openDatabase(path, version: 1, onDowngrade: onDatabaseDowngradeDelete, onCreate: (db, version) {
      db.execute("create table contatos(id integer primary key, name text, accountNumber number)");
    });
  }

  static Future<List<Contato>> findAll() async {
    final database = await _getDatabase();
    final contatosMap = await database.query("contatos");
    final contatos = List<Contato>();

    for(var contatoMap in contatosMap){
      final contato = Contato.fromJson(contatoMap);
      contatos.add(contato);
    }    
    return contatos;
  }

  static Future<int> save(Contato contato) async {
    final database = await _getDatabase();
    return database.insert("contatos", contato.toJson());
  }
}
