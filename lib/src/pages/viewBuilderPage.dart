import 'dart:async';

import 'package:flutter/material.dart';

class ViewBuilderPage extends StatefulWidget {
  _ViewBuilderPageState createState() => _ViewBuilderPageState();
}

class _ViewBuilderPageState extends State<ViewBuilderPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _numberList = new List();
  int _lastItem = 0;
  bool _loading = false;
  @override
  void initState() {
    super.initState();
    _pushImages();
    _scrollController.addListener(() {
      print('escrolled');
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchImages();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ViewBuilderPage'),
        ),
        body: Stack(
          children: <Widget>[_renderList(), _showLoader()],
        ),
      ),
    );
  }

  Widget _renderList() {
    return RefreshIndicator(
      onRefresh: _reload,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final img = _numberList[index];
          return FadeInImage(
            placeholder: AssetImage("assets/images/jar-loading.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.contain,
            image: NetworkImage('https://via.placeholder.com/300/$img'),
          );
        },
      ),
    );
  }

  void _pushImages() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _numberList..add(_lastItem);
    }
    setState(() {});
  }

  Future<Null> _fetchImages() async {
    _loading = true;
    setState(() {});
    final duration = Duration(seconds: 2);
    return new Timer(duration, response);
  }

  void response() {
    _loading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 250,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 245));
    _pushImages();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  Widget _showLoader() {
    if (_loading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<void> _reload() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _numberList.clear();
      _lastItem++;
      _pushImages();

    });
    return Future.delayed(duration);
  }
}
