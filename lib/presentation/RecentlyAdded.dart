import 'package:flutter/material.dart';
import 'package:lesson107/utils/constants.dart';

class RecentItem extends StatelessWidget {
  const RecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 18),
        child:
        Text(
          "Recently Added",
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontSize: 15,
          ),
        ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(14)
                ),
                child: Image(image: AssetImage("assets/lemonade.png"),),
              ),
            ],
          ),
        )
      ],
    );
  }
}
