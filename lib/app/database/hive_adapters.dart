/// External package
import 'package:hive/hive.dart' show TypeAdapter, BinaryReader, BinaryWriter;
/// Internal package
import 'package:mytickets/app/models/invoice_data.dart';

final List<TypeAdapter<dynamic>> typeAdapters = [
  _InvoiceTypeAdapter()
];

/// Invoice Type Adapater
/// 
/// Adding [InvoiceData] type in the Hive database
class _InvoiceTypeAdapter extends TypeAdapter<InvoiceData> {

  /// Type adapter id (reference)
  @override
  int get typeId => 0;

  /// Reading from the database.
  @override
  InvoiceData read(BinaryReader binaryReader) {
    return InvoiceData.fromJson(Map<String, dynamic>.from(binaryReader.read()));
  }
  
  /// Writing in the database
  @override
  void write(BinaryWriter binaryWriter, InvoiceData data) {
    binaryWriter.write(data.toJson());
  }
}