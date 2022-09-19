import 'package:burc_app/model/Sign.dart';

import 'package:burc_app/views/sign_list_page.dart';
import 'package:flutter/material.dart';

import 'sign_detal_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BurcListesi(),
        );

      case '/signDetailPage':
        final Sign choseSign = settings.arguments as Sign;
        return MaterialPageRoute(
          builder: (context) => SignDetail(choseSign: choseSign),
        );
    }
  }
}
