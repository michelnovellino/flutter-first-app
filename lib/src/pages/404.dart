import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Page not found'),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.exit_to_app),
              onPressed:(){
                Navigator.pop(context);
              } ,
            ),
            )
          );
  }
 }
