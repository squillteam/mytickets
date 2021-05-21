/// Standard package
import 'dart:io' show Directory;
/// Internal package
import 'package:mytickets/app/database/hive_adapters.dart';
/// External packages
import 'package:hive/hive.dart' show Hive, Box, TypeAdapter;
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;

/// Hive Database
class HiveDatabase {

  /// Constructor internal (private)
  HiveDatabase._internal();

  /// Intance static
  static final HiveDatabase _instance = HiveDatabase._internal();

  /// Constructor
  factory HiveDatabase() => HiveDatabase._instance;

  /// Boot check
  bool _initialized = false;

  /// To initialize [Hive]
  Future<void> initialize() async {
    // Get directory to storage database
    Directory directory = await getApplicationDocumentsDirectory();
    // Initializing
    Hive.init(directory.path);

    // Verify that type adapters are registered
    typeAdapters.forEach((TypeAdapter<dynamic> typeAdapter) {
      if(!Hive.isAdapterRegistered(typeAdapter.typeId)) Hive.registerAdapter(typeAdapter);
    });

    // Hive db initlized 
    _initialized = true;
  }

  /// Writing data to the database with [Hive]
  Future<void> writeData<T>(String name, T data) async {
    // Checking database initilization
    if(!_initialized) await initialize();
    // Get box/table from database
    Box<T> box = await Hive.openBox<T>(name);
    // Adding data to database
    box.add(data);
    // Closing database
    await box.close();
  }

  /// Reading data from the database with [Hive]
  Future<List<T>> readData<T>(String name) async {
    // Checking database initilization
    if(!_initialized) await initialize();
    // Get box/table from database
    Box<T> box = await Hive.openBox<T>(name);
    // Getting all data
    List<T> datas = box.values.toList();
    // Closing database
    await box.close();
    // Return all data
    return datas;
  }

}