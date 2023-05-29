import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';

class BottomCartWidget extends StatelessWidget {

  final double height;
  final double width;

  const BottomCartWidget(
  {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {

      return Container(
        color: Colors.white,
        width: width,
        height: height * .1,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total Price", style: TextStyle(color: Colors.black.withOpacity(.2), fontSize: 12)),
                  Text("\$18.00", style: TextStyle(color: AppColors.appGreen, fontSize: 22, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: width * .3),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.appGreen
                      ),
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(width * .15, height * .06)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topRight: Radius.zero,
                                    bottomRight: Radius.zero)))),
                    child: Row(
                        children: const [Icon(Icons.shopping_bag), Text("1")])),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(

                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.primaryColor
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(width * .25, height * .06),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.zero,
                                    bottomLeft: Radius.zero)))),
                    child: const Text("Buy Now")),
              ],
            )
          ],
        ),
      );
  }
}
