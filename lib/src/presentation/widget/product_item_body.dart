import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';
import 'package:marketplace_concept/src/presentation/widget/item_description_widget.dart';
import 'package:marketplace_concept/src/presentation/widget/rating_widget.dart';
import 'package:marketplace_concept/src/presentation/widget/similar_images_widget.dart';

class ProductItemBody extends StatelessWidget {

  final double height;
  final double width;

  const ProductItemBody(
  {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
      return Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15
                ),
                Row(
                  children: [
                    Icon(Icons.card_giftcard_outlined, color: Colors.black.withOpacity(.2)),
                    Text(" tokobaju.id", style: TextStyle(color: Colors.black.withOpacity(.2)))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7),
                  width: width * .75,
                  child: const Text("Essentials Men's Short-Sleeve Crewneck T-Shirt",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: width * .85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          Text("4.9 Ratings", style: TextStyle(color: Colors.black.withOpacity(.2))),
                        ],
                      ),
                      CircleAvatar(radius: 2, backgroundColor: Colors.black.withOpacity(.2)),
                       Text("2.3k+ Reviews", style: TextStyle(color: Colors.black.withOpacity(.2))),
                      CircleAvatar(radius: 2, backgroundColor: Colors.black.withOpacity(.2)),
                       Text("2.9k + Sold", style: TextStyle(color: Colors.black.withOpacity(.2)))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: width * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * .45,
                        child: Column(
                          children: [
                            Text("About Item", style: TextStyle(color: AppColors.appGreen, fontWeight: FontWeight.bold)),
                            Divider(thickness: 2, color: AppColors.appGreen)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * .45,
                        child: Column(
                          children: [
                            Text("Reviews", style: TextStyle(color: Colors.black.withOpacity(.2))),
                            Divider(thickness: 0, height: 7, color: Colors.black.withOpacity(.2))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                itemInfo(titleOne: "Brand: ", valueOne: "ChAmkpR", titleTwo: "Color: ", valueTwo: "Aprikot"),
                itemInfo(titleOne: "Category: ", valueOne: "Casual Shirt", titleTwo: "Material: ", valueTwo: "Polyester"),
                itemInfo(titleOne: "Condition: ", valueOne: "New", titleTwo: "Heavy: ", valueTwo: "200 g"),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: width * .9,
                    child: Divider(color: Colors.black.withOpacity(.2))
                ),
                ItemDescriptionWidget(height: height, width: width),
                RatingWidget(height: height, width: width),
                SimilarImagesWidget(height: height, width: width)
              ],
            ),
          ),
        ],
      );
  }


  itemInfo({required String titleOne, required String valueOne, required String titleTwo, required String valueTwo}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width * .4,
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: titleOne, style: TextStyle(color: Colors.black.withOpacity(.3))),
                    TextSpan(text: valueOne, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
                  ]
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            width: width * .43,
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: titleTwo, style: TextStyle(color: Colors.black.withOpacity(.3))),
                    TextSpan(text: valueTwo, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
                  ]
              ),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
  
}
