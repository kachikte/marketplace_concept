import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/presentation/widget/appbar/item_image_widget.dart';
import 'package:marketplace_concept/src/presentation/widget/product_item_body.dart';

import '../widget/appbar/product_app_bar.dart';
import '../widget/bottom_cart_widget.dart';

class ProductItemScreen extends StatelessWidget {
  const ProductItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.95),
      body: Column(
        children: [
          ProductAppBar(height: height, width: width),
          Stack(
            children: [
              SizedBox(
                height: height * .8,
                width: width * .9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ItemImageWidget(height: height, width: width),
                      ProductItemBody(width: width, height: height),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(top: height * .8, child: SizedBox(child: BottomCartWidget(height: height, width: width)))
        ],
      ),
    );
  }
}
