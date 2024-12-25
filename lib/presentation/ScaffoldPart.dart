import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson107/presentation/TreaningRecipe.dart';
import 'package:lesson107/presentation/YourRecipe.dart';
import 'package:lesson107/presentation/TopChefs.dart';


class ScoffoldPage extends StatelessWidget {
  const ScoffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 160),
      children: const [
        SizedBox(height: 15,),
        Treaning_recipe(),
        SizedBox(height: 80,),
        MyRecipe(),
        SizedBox(height: 10,),
        Chefs()

      ],
    );
  }
}
