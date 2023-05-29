import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/presentation/widget/appbar/app_bar_icons.dart';
import 'package:marketplace_concept/src/utils/helper_functions.dart';

import '../../../config/app_colors.dart';

class ProductAppBar extends StatelessWidget {

  final double height;
  final double width;

  const ProductAppBar({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      height: height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(onTap: () => Navigator.of(context).pop(), child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              iconCustom(iconData: Icons.favorite, data: "", color: Colors.pinkAccent),
              iconCustom(iconData: Icons.share_outlined, data: ""),
              iconCustom(iconData: Icons.shopping_bag_outlined, data: "1")
            ],
          ),
        ],
      ),
    );
  }

  Widget iconCustom({required String data, required IconData iconData, Color color = AppColors.primaryColor}) {
    return Container(
      margin: const EdgeInsets.only(left: 2),
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: width * .1,
      child: AppBarIcons(heightFactor: height * .07, widthFactor: width * .14, data: data, iconData: iconData, color: color),
    );
  }
}
