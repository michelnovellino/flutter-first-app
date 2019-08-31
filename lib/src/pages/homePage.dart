import 'package:flutter/material.dart';
import 'package:destiny/src/providers/menu.provider.dart';
import 'package:destiny/src/utils/icons.util.dart';

class HomePage extends StatelessWidget {
  final items = ['item 1', 'item 2', 'item 3', 'item 4'];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Destiny'),
            ),
            body: _list()
            )
          );
  }

  Widget _list() { 
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _buildList(snapshot.data),  
          );
      });
  }

  List<Widget> _buildList(List<dynamic> list){
    final List<Widget> items = [];
    list.forEach((item){
      final  widget = ListTile(
        title: Text(item['text']),
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blue),
        onTap: (){},
      );
      items..add(widget)
            ..add(Divider());
    });
    return items;
  }

}
