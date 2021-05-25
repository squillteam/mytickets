import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mytickets/app/models/invoice_data.dart';

void main() {
  group("Testing data models", () {

    List<InvoiceData> invoicesData = [];

    test("Add invoices", () {

      invoicesData.add(InvoiceData(
        name: "Macbook Pro", 
        imagePath: "https://www.apple.com/v/macbook-pro/aa/images/overview/hero_mbp__fsgedw8koju6_large_2x.jpg", 
        date: DateTime.now()
      ));

      expect(invoicesData.length, 1);

    });

    test("Read invoices as Json", () {
      invoicesData.forEach((InvoiceData invoice) {

        const List<String> keys = [ "name", "imagePath", "date" ];

        Matcher existsAllKeysInMap = predicate((Map<String, dynamic> invoiceJson) {
          for(int index = 0; index < keys.length; index++) {
            if(!invoiceJson.keys.contains(keys[index]) || invoiceJson[keys[index]] == null) return false;
          }
          return true;
        });

        expect(invoice.toJson(), existsAllKeysInMap);
      });
    });

    test("Read invoices as String", () {
      invoicesData.forEach((InvoiceData invoice) {

        Matcher formatString = predicate((String invoiceString) {
          if(invoiceString.indexOf("{") != 0 || invoiceString.indexOf("}") != (invoiceString.length - 1)) 
            return false;

          return true;
        });

        expect(invoice.toString(), formatString);

        print("${invoicesData.indexOf(invoice)} invoice: $invoice");

      });
    });
  });
}