import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> items = [];
  _MenuProvider(){
/*     loadData();
 */  }

  Future <List<dynamic>>loadData() async {
    final res = await rootBundle.loadString('mockups/menu.json');
        Map dataMap = json.decode(res);
        items = dataMap['routes'];
  return items;
}
}

final menuProvider = new _MenuProvider();