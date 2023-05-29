import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';

class AppBarIcons extends StatelessWidget {
  final Color color;
  final double heightFactor;
  final double widthFactor;
  final IconData iconData;
  final String data;

  const AppBarIcons(
      {super.key, required this.heightFactor, required this.widthFactor, required this.iconData, required this.data, this.color = AppColors.primaryColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightFactor,
      width: widthFactor,
      child: Stack(
        children: [
          Center(
            child: IconButton(
                onPressed: () {},
                icon: Icon(iconData, size: widthFactor * .45, color: color.withOpacity(.5))),
          ),
          if(data != "")
            Positioned(
              right: 0,
              top: 2,
              child: Container(
                width: widthFactor * .35,
                height: heightFactor * .32,
                decoration: const BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Center(child: Text(data, style: const TextStyle(fontSize: 8, color: Colors.white),)),
              ))
        ],
      ),
    );
  }
}
