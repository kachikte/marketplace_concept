import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marketplace_concept/src/config/app_routes.dart';
import 'package:marketplace_concept/src/presentation/screen/product_item_screen.dart';
import 'package:marketplace_concept/src/presentation/widget/products/product_item_widget.dart';

class ProductListWidget extends StatelessWidget {
  final double height;
  final double width;

  const ProductListWidget(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    List imageUrls = [
      "assets/images/shirts/shirt-one-removebg-preview.png",
      "assets/images/shirts/shirt-two-removebg-preview.png",
      "assets/images/shirts/shirt-three-removebg-preview.png",
      "assets/images/shirts/shirt-four-removebg-preview.png",
      "assets/images/shirts/shirt-five-removebg-preview.png",
      "assets/images/shirts/shirt-one-removebg-preview.png",
      "assets/images/shirts/shirt-two-removebg-preview.png",
      "assets/images/shirts/shirt-three-removebg-preview.png",
      "assets/images/shirts/shirt-four-removebg-preview.png",
      "assets/images/shirts/shirt-five-removebg-preview.png"
    ];

    return Container(
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 110 / 140,
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
            ),
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return Material(
                child: InkWell(
                    splashColor: Colors.black,
                    onTap: () => Get.to(() => const ProductItemScreen(),
                        duration: const Duration(seconds: 1),
                        transition: Transition.downToUp),
                    child: Ink(
                      width: width * .43,
                      height: height * .3,
                      child: ProductItemWidget(
                              index: index,
                              height: height,
                              width: width,
                              imageUrl: imageUrls[index]),
                    )),
              );
            }));
  }
}
