import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final items = ['item 1', 'item 2', 'item 3', 'item 4'];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Destiny'),
            ),
            body: ListView(
              children: _listShortItems(),
            )));
  }
/* 
  List<Widget> _listItems() {
    List<Widget> list = new List<Widget>();
    for (var item in items) {
      final temp = ListTile(
        title: Text(item),
      );
      list..add(temp)..add(Divider());
    }
    return list;
  } */

  List<Widget> _listShortItems() {
    return items.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
