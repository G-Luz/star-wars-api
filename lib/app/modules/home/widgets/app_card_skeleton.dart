import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class AppCardSkeleton extends StatelessWidget {
  const AppCardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: (MediaQuery.of(context).size.width - 100),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: SkeletonAnimation(
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
              ),
            );
          }),
    );
  }
}
