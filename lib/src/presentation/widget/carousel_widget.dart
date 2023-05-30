import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';
import 'package:marketplace_concept/src/presentation/widget/buttons/app_button.dart';

class CarouselWidget extends StatelessWidget {
  final int index;
  final String imageUrl;
  final double height;
  final double width;

  const CarouselWidget({super.key, required this.height, required this.width, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    double appliedHeight = height * .23;
    double imageHeight = height * .22;

    return Container(
      color: AppColors.appGrey,
      height: appliedHeight,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: appliedHeight - imageHeight,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25),
                width: width * .4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: height * .007),
                    const Text("#FASHION DAY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    SizedBox(height: height * .003),
                    Text("80% OFF",
                        style: TextStyle(
                            fontSize: height * .04,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: height * .003),
                    Text(
                      "Discover fashion that suits your style",
                      style: TextStyle(fontSize: 10, color: AppColors.primaryColor.withOpacity(.3)),
                    ),
                    SizedBox(height: height * .003),
                    const AppButton(),
                    SizedBox(height: height * .01),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      height: 14,
                      child: dotIndicator(),
                    ),
                    Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                        height: imageHeight - 25,
                        width: width * .8)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget dotIndicator() {
    return SizedBox(
      height: height * .02,
      child: DotsIndicator(
        dotsCount: 4,
        position: index,
        decorator: DotsDecorator(
          color: Colors.grey,
          activeColor: AppColors.primaryColor,
          size: const Size.square(6.0),
          activeSize: const Size(10.0, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        ),
      ),
    );
  }
}
