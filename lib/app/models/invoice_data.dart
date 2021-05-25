/// Internal package
import 'package:mytickets/app/helpers/abstractions/model.dart';

/// Invoice Data Model
class InvoiceData implements Model {

  // Attributes
  final String name;
  final String imagePath;
  final DateTime date;

  /// Constructor
  /// Data input to [InvoiceData]
  const InvoiceData({
    required this.name,
    required this.imagePath,
    required this.date
  });

  /// To json
  /// Data output from [InvoiceData] 
  @override
  Map<String, dynamic> toJson() => {
    "name": this.name,
    "imagePath": this.imagePath,
    "date": this.date
  };

  /// To string
  /// Data output from [InvoiceData]
  @override 
  String toString() => "{ name: ${this.name}, imagePath: ${this.imagePath}, date: ${this.date} }";

  /// Method to initilize [InvoiceData] with json
  static InvoiceData fromJson(Map<String, dynamic> json) {
    try {

      // Try to return with these arguments
      return InvoiceData(
        name: json['name'], 
        imagePath: json['imagePath'], 
        date: json['date']
      );

    } catch(e) {
      // Throw error
      throw e;
    }
  }

}