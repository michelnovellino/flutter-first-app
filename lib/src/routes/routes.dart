import 'package:destiny/src/pages/sliderPage.dart';
import 'package:destiny/src/pages/viewBuilderPage.dart';
import 'package:flutter/material.dart';

import 'package:destiny/src/pages/alertPage.dart';
import 'package:destiny/src/pages/avatarPage.dart';
import 'package:destiny/src/pages/homePage.dart';
import 'package:destiny/src/pages/cardPage.dart';
import 'package:destiny/src/pages/animatedContainerPage.dart';
import 'package:destiny/src/pages/inputsPage.dart';

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
    },
    'animated_container': (BuildContext context) {
      return AnimatedContainerPage();
    },
    'inputs': (BuildContext context) {
      return InputsPage();
    },
    'slider': (BuildContext context) {
      return SliderPage();
    },
    'view_builder': (BuildContext context) {
      return ViewBuilderPage();
    }
  };
}
