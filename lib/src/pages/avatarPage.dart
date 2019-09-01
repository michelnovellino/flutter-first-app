import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://www.biography.com/.image/t_share/MTIwNjA4NjM0MTk3MjE0NzMy/stan-lee-21101093-1-402.jpg"
              ),
              radius: 25.0,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
            "https://los40es00.epimg.net/los40/imagenes/2017/03/06/cinetv/1488800235_941119_1488800338_noticia_normal.jpg"
          ),
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          fadeInDuration:Duration(milliseconds: 200),
        ),
      ),
    ));
  }
}
