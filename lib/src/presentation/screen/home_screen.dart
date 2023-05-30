import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';
import 'package:marketplace_concept/src/presentation/widget/carousel_widget.dart';
import 'package:marketplace_concept/src/presentation/widget/category_section.dart';
import 'package:marketplace_concept/src/presentation/widget/products/product_list_widget.dart';

import '../widget/appbar/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final carouselWidgets = [
      CarouselWidget(
          height: height,
          width: width,
          imageUrl: "assets/images/carousel/slide-one-removebg-preview.png",
          index: 0),
      CarouselWidget(
          height: height,
          width: width,
          imageUrl: "assets/images/shirts/shirt-five-removebg-preview.png",
          index: 1),
      CarouselWidget(
          height: height,
          width: width,
          imageUrl: "assets/images/shirts/shirt-four-removebg-preview.png",
          index: 2),
      CarouselWidget(
          height: height,
          width: width,
          imageUrl: "assets/images/shirts/shirt-two-removebg-preview.png",
          index: 3)
    ];

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          collapsedHeight: height * .1,
          pinned: true,
          floating: false,
          elevation: 0,
          expandedHeight: height * .34,
          toolbarHeight: height * .1,
          title: CustomAppBar(height: height, width: width),
          flexibleSpace: FlexibleSpaceBar(
            background: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                aspectRatio: 1,
                onPageChanged: (index, reason) {
                },
              ),
              items: carouselWidgets,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                return Column(
                  children: [
                    CategorySection(height: height, width: width),
                    Container(
                      color: AppColors.appGrey,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            height: height * .08,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Best Sale Product",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18)),
                                Text("See more",
                                    style:
                                    TextStyle(fontSize: 14, color: AppColors.appGreen)),
                              ],
                            ),
                          ),
                          ProductListWidget(height: height, width: width)
                        ],
                      ),
                    )
                  ],
                );
              },
              childCount: 1
          ),
        ),
      ],
    );

  }
}
