import 'package:flutter/material.dart';

import '../../config/app_colors.dart';

class SimilarImagesWidget extends StatelessWidget {

  final double height;
  final double width;

  const SimilarImagesWidget(
  {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .15,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Reviews with images & vides", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), textAlign: TextAlign.start),
          const SizedBox(
            height: 10,
          ),
          imageList()
        ],
      ),
    );
  }

  imageList() {
    return SizedBox(
      height: height * .1,
      width: width,
      child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Container(
                height: height * .05,
                width: width * .2,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                  color: AppColors.appGrey
              ),
              margin: EdgeInsets.only(right: width * .03),
              child: Image.asset(
                  "assets/images/shirts/shirt-five-removebg-preview.png",
                  fit: BoxFit.contain,
                  height: height * .03,
                  width: width * .15),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          padding: const EdgeInsets.only(left: 5)),
    );
  }

}
