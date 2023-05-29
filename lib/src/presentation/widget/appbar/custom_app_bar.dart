import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';
import 'package:marketplace_concept/src/presentation/widget/appbar/app_bar_icons.dart';
import 'package:marketplace_concept/src/utils/helper_functions.dart';

class CustomAppBar extends StatelessWidget {

  final double height;
  final double width;

  const CustomAppBar({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appGrey,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: height * .1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            width: width * .65,
            child: TextFormField(
              decoration: InputDecoration(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.search, color: Colors.black12),
                    SizedBox(
                      width: 7,
                    ),
                    Text("Search..", style: TextStyle(color: Colors.black12))
                  ],
                ),
                enabled: true,
                enabledBorder: HelperFunctions.outlineInputBorder,
                focusedBorder: HelperFunctions.outlineInputBorder
              ),
            ),
          ),
          SizedBox(
            width: width * .23,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconCustom(iconData: Icons.shopping_bag_outlined, data: "1"),
                iconCustom(iconData: Icons.chat_bubble_outline_rounded, data: "9+")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget iconCustom({required String data, required IconData iconData}) {
    return Container(
      margin: const EdgeInsets.only(left: 2),
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: width * .1,
      child: AppBarIcons(heightFactor: height * .07, widthFactor: width * .14, data: data, iconData: iconData),
    );
  }
}
