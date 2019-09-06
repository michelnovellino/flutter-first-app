import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _slider = 50;
  bool _checked = false;
  bool _switched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('SliderPage'),
        ),
        body: Column(
          children: <Widget>[
            _renderSlider(),
            Divider(),
            _renderCheck(),
            _renderSwitch(),
            _renderImage(),
            
          ],
        ),
      ),
    );
  }

  Widget _renderSlider() {
    return Slider(
      activeColor: Colors.blueAccent,
      min: 50,
      max: 300,
      value: _slider,
      onChanged: (_checked)
          ? null
          : (value) {
              print(value);
              setState(() {
                _slider = value;
              });
            },
    );
  }

  Widget _renderCheck() {
/*     return Checkbox(
      value: _checked,
      onChanged: (value) {
        setState(() {
          _checked = value;
        });
      },
    ); */
    return CheckboxListTile(
      value: _checked,
      title: Text('bloquear slider'),
      onChanged: (value) {
        setState(() {
          _checked = value;
        });
      },
    );
  }
  Widget _renderSwitch() {
    return SwitchListTile(
      value: _switched ,
      title: Text('bloquear slider'),
      onChanged: (value) {
        setState(() {
          _switched = value;
        });
      },
    );
  }


  Widget _renderImage() {
    return FadeInImage(
      width: _slider,
      placeholder: AssetImage("assets/images/jar-loading.gif"),
      fadeInDuration: Duration(milliseconds: 200),
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://images.pexels.com/photos/51971/football-the-ball-sport-game-51971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
    );
  }

}
