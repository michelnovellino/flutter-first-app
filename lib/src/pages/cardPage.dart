import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('CardPage'),
          ),
          body: ListView(
            padding: EdgeInsets.all(8),
            children: <Widget>[
              _cardType1(),
              SizedBox(height: 20),
              _cardType2()
            ],
          )),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Awesome title'),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis justo sed diam scelerisque consectetur in at arcu. "),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      // clipbehavior aplica el mismo bordeado a la imagen del card
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            height: 245.0,
            image: NetworkImage(
                'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
            placeholder: AssetImage("assets/images/jar-loading.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
/*           Image(image: NetworkImage('https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
 */
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis justo sed diam scelerisque consectetur in at arcu. "))
        ],
      ),
    );
  }
}
