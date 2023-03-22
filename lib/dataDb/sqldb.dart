import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class SqlDb{

  static  Database? _db ;

  Future<Database?> get db  async {
    if(_db == null ){
      _db = await intialDb();
      return _db ;
    }else{
      return _db ;
    }
  }

  intialDb() async {
    String databeseoath = await getDatabasesPath();
    String path = join(databeseoath , 'Test.db');
    Database mydb = await openDatabase(path , onCreate: _onCreate , version: 1 , onUpgrade: _onUpgrade );
    return mydb ;
  }

  _onUpgrade(Database db , int  oldversion , int newversion){
    print("on upgrade ");
  }

  _onCreate(Database db , int version) async {
    await db.execute('''
    CREATE TABLE "restaurant" 
    (
       id INTEGER NOT NULL PRIMARY KEY ,
       name Text NOT NULL ,
       image Text NOT NULL
    )
    ''');
    print("Create");
  }

  readData(String sql) async {
    Database? mydb = await db ;
    List<Map> response = await mydb!.rawQuery(sql);
    return response ;
  }

  insertData(String sql) async {
    Database? mydb = await db ;
    int response = await mydb!.rawInsert(sql);
    return response ;
  }


  updateData(String sql) async {
    Database? mydb = await db ;
    int response = await mydb!.rawUpdate(sql);
    return response ;
  }


  deleteData(String sql) async {
    Database? mydb = await db ;
    int response = await mydb!.rawDelete(sql);
    return response ;
  }





}
