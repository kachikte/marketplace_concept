import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/presentation/screen/product_item_screen.dart';

class AppRoutes {
  static const productItemScreen = "/product-item-screen";

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    late MaterialPageRoute materialPageRoute;

    switch(routeSettings.name) {
      case productItemScreen:
        materialPageRoute =  MaterialPageRoute(builder: (_) => const ProductItemScreen());
        break;
    }

    return materialPageRoute;
  }
}
