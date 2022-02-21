import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:star_wars/app/constants/app_colors.dart';

class AppMenuOptions extends StatelessWidget {
  int index;
  int indexSelectedButton;
  String title;
  String link;
  Function changeOptionCallback;

  AppMenuOptions(
      {required this.index,
      this.indexSelectedButton = 0,
      required this.title,
      required this.link,
      required this.changeOptionCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          changeOptionCallback(index);
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(
              indexSelectedButton == index
                  ? AppColors.highlightBlue
                  : AppColors.lightBlue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/$title.png",
              height: 20,
            ),
            const SizedBox(height: 10),
            Text(tr(title)),
          ],
        ),
      ),
    );
  }
}
