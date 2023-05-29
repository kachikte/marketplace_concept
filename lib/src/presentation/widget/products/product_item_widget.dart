import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';

class ProductItemWidget extends StatelessWidget {

  final int index;
  final double height;
  final double width;
  final String imageUrl;

  const ProductItemWidget(
  {super.key, required this.index, required this.height, required this.width, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    double itemHeight = height * .28;
    double itemWidth = width * .43;

    return Container(
      height: itemHeight,
      width: itemWidth,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        color: AppColors.appGrey
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imageUrl, fit: BoxFit.fill, width: itemWidth, height: itemHeight/2),
              Container(
                height: (itemHeight)/2 * .86,
                color: index == 0 ? Colors.white : Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Shirt", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(.2))),
                    ),
                    const SizedBox(
                        height: 5
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Essentials Men's Short-Sleeve Crewneck T-Shirt", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                    ),
                    const SizedBox(
                        height: 10
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber, size: 12),
                              Text("4.9 | 2356", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(.2))),
                            ],
                          ),
                          Text("\$12.00", style: TextStyle(color: AppColors.appGreen, fontSize: 18, fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(top: .02, right: .1, child: IconButton(icon: Icon(Icons.favorite_border, color: Colors.black.withOpacity(.5), size: 20), onPressed: () {  }))
        ]
      ),
    );
  }
}
