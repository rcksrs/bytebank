import 'package:bytebank/models/contato.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConfig {
  Future<Database> createDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "bytebank.db");
    
    return openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute("create table contatos(id integer primary key, nome text, conta number)");
    });
  }

  Future<List<Contato>> findAll() async {
    final database = await createDatabase();
    final contatosMap = await database.query("contatos");
    final contatos = List<Contato>();

    for(var contatoMap in contatosMap){
      final contato = Contato.fromJson(contatoMap);
      contatos.add(contato);
    }    
    return contatos;
  }

  Future<int> save(Contato contato) async {
    final database = await createDatabase();
    return database.insert("contatos", contato.toJson());
  }
}
