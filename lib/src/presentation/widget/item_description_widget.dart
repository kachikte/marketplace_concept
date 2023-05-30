import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';

class ItemDescriptionWidget extends StatelessWidget {
  final double height;
  final double width;

  const ItemDescriptionWidget(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    descriptionLine({required String textDesc}) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            width: width * .1,
            child: Center(
                child: CircleAvatar(backgroundColor: Colors.black.withOpacity(.2), radius: 2)),
          ),
          SizedBox(
              height: 40,
              width: width * .8,
              child: Center(child: Text(textDesc, style: TextStyle(color: Colors.black.withOpacity(.2)))))
        ],
      );
    }

    return SizedBox(
      height: height * .75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(ttl: "Description:"),
          const SizedBox(height: 10),
          descriptionLine(
              textDesc:
                  "Long Sleeve chess shirt in classic structuring button down color"),
          descriptionLine(
              textDesc:
                  "Long Sleeve chess shirt in classic structuring button down color"),
          descriptionLine(
              textDesc:
                  "Long Sleeve chess shirt in classic structuring button down color"),
          descriptionLine(
              textDesc:
                  "Long Sleeve chess shirt in classic structuring button down color"),
          descriptionLine(
              textDesc:
                  "Long Sleeve chess shirt in classic structuring button down color"),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              width: width * .8,
              child: Center(
                  child: Text(
                      "Chat us if there is anything you need to ask about the product", style: TextStyle(color: Colors.black.withOpacity(.2))))),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 20,
              width: width * .8,
              child: Row(
                children: [
                  Text("See less", style: TextStyle(color: AppColors.appGreen.withOpacity(.8))),
                  const Icon(Icons.keyboard_arrow_up_sharp)
                ],
              )),
          SizedBox(
            height: height * .02,
          ),
          divider(),
          SizedBox(
            height: height * .02,
          ),
          titleText(ttl: "Shipping Information:"),
          itemInfo(titleOne: "Delivery:", valueOne: "Shipping from Jakarta, Indonesia"),
          itemInfo(titleOne: "Shipping:", valueOne: "FREE international Shipping"),
          itemInfo(titleOne: "Arrive:", valueOne: "Estimated Arrival on 25-27 Oct 2022"),
          divider()
        ],
      ),
    );
  }
  
  titleText({required String ttl}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(ttl,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold)),
    );
  }

  itemInfo({required String titleOne, required String valueOne}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: width * .9,
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: "$titleOne \t", style: TextStyle(color: Colors.black.withOpacity(.2))),
              TextSpan(text: valueOne, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
            ]
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  divider() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: width * .9,
        child: Divider(color: Colors.black.withOpacity(.2))
    );
  }

}
