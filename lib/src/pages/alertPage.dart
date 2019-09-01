import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('AlertPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () {
           return _show(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ));
  }

  void _show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text('Dialog'),
          content:Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis justo sed diam scelerisque consectetur in at arcu. "
                )
        );
      }
      );
  }
}
