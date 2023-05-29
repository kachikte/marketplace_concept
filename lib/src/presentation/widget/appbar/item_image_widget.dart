import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';

class ItemImageWidget extends StatelessWidget {
  final double height;
  final double width;

  const ItemImageWidget({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    imageList() {
      return SizedBox(
        height: height * .24,
        width: width * .1,
        child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: AppColors.appGrey
                ),
                margin: EdgeInsets.only(bottom: height * .01),
                child: Image.asset(
                    "assets/images/shirts/shirt-five-removebg-preview.png",
                    fit: BoxFit.cover,
                    height: height * .05,
                    width: width * .1),
              );
            },
            itemCount: 4,
            padding: const EdgeInsets.all(0)),
      );
    }

    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: AppColors.appGrey
        ),
        height: height * .5,
        child: Image.asset("assets/images/shirts/shirt-one-removebg-preview.png",
            fit: BoxFit.fill, height: height * .34, width: width * .9),
      ),
      Positioned(top: 10, left: 10, child: imageList()),
    ]);
  }
}
