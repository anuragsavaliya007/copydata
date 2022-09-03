
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Dbhelper{


  Future initDb() async{
    final dbPath = await getDatabasesPath();
    final path = join(dbPath,"app.db");
    /*var dbDir = await getDatabasesPath();
var dbPath = join(dbDir, "app.db");*/
    await deleteDatabase(dbPath);
    ByteData data = await rootBundle.load(join("assets","joksdatabase.db"));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes, flush: true);
    await openDatabase(path);
  }

//   Future<String> initDatabase() async {
//
//
//     final databasesPath = await getDatabasesPath();
//     final path = join(databasesPath, "app.db");
//
// // Check if the database exists
//     var exists = await databaseExists(path);
//
//     if (!exists) {
//       // Should happen only the first time you launch your application
//       print("Creating new copy from asset");
//
//       // Make sure the parent directory exists
//       try {
//         await Directory(dirname(path)).create(recursive: true);
//       } catch (_) {}
//
//       // Copy from asset
//       ByteData data = await rootBundle.load(join("assets", "font.db"));
//       List<int> bytes =
//       data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//
//       // Write and flush the bytes written
//       await File(path).writeAsBytes(bytes, flush: true);
//
//     } else {
//       print("Reading Existing Database");
//     }
// // open the database
//    var database = await openDatabase(path, readOnly: true);
//
//
//     return path;
//   }




}
