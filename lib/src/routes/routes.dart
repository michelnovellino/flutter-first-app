import 'package:destiny/src/pages/cardPage.dart';
import 'package:flutter/material.dart';

import 'package:destiny/src/pages/alertPage.dart';
import 'package:destiny/src/pages/avatarPage.dart';
import 'package:destiny/src/pages/homePage.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) {
      return HomePage();
    },
    'alert': (BuildContext context) {
      return AlertPage();
    },
    'avatar': (BuildContext context) {
      return AvatarPage();
    },
    'card': (BuildContext context) {
      return CardPage();
    }
  };
}
