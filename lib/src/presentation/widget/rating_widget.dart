import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RatingWidget extends StatelessWidget {

  final double height;
  final double width;

  const RatingWidget(
  {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Reviews & Ratings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), textAlign: TextAlign.start),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: height * .2,
          width: width,
          child: Row(
            children: [
              firstColumn(),
              secondColumn(),
              thirdColumn()
            ],
          )
        )
      ],
    );
  }

  firstColumn() {
    return Column(
      children: [
        Container(
          width: width * .3,
          margin: const EdgeInsets.only(top: 10),
          height: height * .07,
          child: RichText(
            text: TextSpan(
                children: [
                  const TextSpan(text: "4.9", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold)),
                  TextSpan(text: " /5.0", style: TextStyle(color: Colors.black.withOpacity(.2), fontSize: 15))
                ]
            ),
            textAlign: TextAlign.start,
          ),
          // child: const Text("4.9", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold), textAlign: TextAlign.start),
        ),
        SizedBox(
          height: height * .05,
          child: RatingBar.builder(
            itemSize: 15,
            initialRating: 4.5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
            },
          ),
        ),
        SizedBox(
          height: height * .05,
          child: Text("2.5k+ Reviews", style: TextStyle(color: Colors.black.withOpacity(.2))),
        )
      ],
    );
  }

  secondColumn() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: height * .25,
      child: RatingBar.builder(
        itemSize: 22,
        initialRating: 5,
        minRating: 1,
        direction: Axis.vertical,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
        itemBuilder: (context, index) => SizedBox(
          height: height *.047,
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const SizedBox(width: 3),
              Text("${5-index}", style: TextStyle(color: Colors.black.withOpacity(.5)))
            ],
          ),
        ),
        onRatingUpdate: (rating) {
        },
      ),
    );
  }

  thirdColumn() {
    List doubs = [.9, .7, .6, .4, .3];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: width * .45,
      height: height * .2,
      child: ListView.builder(itemBuilder: (ctx, index) {
        return SizedBox(
          height: height * .03,
          child: Row(
            children: [
              LinearPercentIndicator(
                width: width * .38,
                lineHeight: 10.0,
                percent: doubs[index],
                backgroundColor: Colors.grey,
                progressColor: AppColors.appGreen,
              ),
              SizedBox(width: width * .07, child: const Text("12"))
            ],
          ),
        );
      }, itemCount: 5, padding: EdgeInsets.zero),
    );
  }
}
