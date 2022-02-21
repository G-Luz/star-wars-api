import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class AppMenuOptionsSkeleton extends StatelessWidget {
  const AppMenuOptionsSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate:
          const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 140,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemBuilder: (BuildContext context, int index) {
            return SkeletonAnimation(
              shimmerColor: Colors.grey,
              shimmerDuration: 2000,
              curve: Curves.easeInQuad,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                // margin: EdgeInsets.only(top: 40),
              ),
            );
          }),
    );;
  }
}
