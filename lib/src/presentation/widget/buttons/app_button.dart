import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColors.primaryColor.withOpacity(.8)
        )
      ),
      child: const Text("Check this out", style: TextStyle(fontSize: 13)),
    );
  }
}
