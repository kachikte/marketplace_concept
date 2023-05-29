import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';

class CategorySection extends StatelessWidget {
  final double height;
  final double width;
  const CategorySection({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {

    List<IconData> icons = [
      Icons.account_tree_outlined,
      Icons.airplanemode_active,
      Icons.shopping_bag_rounded,
      Icons.network_wifi,
      Icons.monetization_on_outlined
    ];

    List categories = [
      "Category",
      "Flight",
      "Bill",
      "Data Plan",
      "Top Up"
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      color: Colors.white,
      height: height * .15,
      child: Column(
        children: [
          SizedBox(
            height: height * .02,
          ),
          SizedBox(
            height: height * .1,
            child: ListView.builder(itemBuilder: (ctx, index) {
              return item(iconData: icons[index], category: categories[index]);
            }, itemCount: 5, scrollDirection: Axis.horizontal),
          ),
          dotIndicator(0)
        ],
      ),
    );
  }
  
  Widget dotIndicator(int index) {
    return SizedBox(
      height: height * .02,
      child: DotsIndicator(
        dotsCount: 5,
        position: index,
        decorator: DotsDecorator(
          color: Colors.grey,
          activeColor: AppColors.primaryColor,
          size: const Size.square(6.0),
          activeSize: const Size(12.0, 960),
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        ),
      ),
    );
  }

  Widget item({required IconData iconData, required String category}) {
    return Container(
      margin: EdgeInsets.only(right: width * .06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(7)
            ),
            height: height * .06,
            width: width * .12,
            child: Icon(iconData, color: Colors.black.withOpacity(.4), size: 17),
          ),
          Text(category, style: TextStyle(color: Colors.black.withOpacity(.2), fontSize: 12))
        ],
      ),
    );
  }
}
