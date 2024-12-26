import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson107/utils/constants.dart';
import 'package:lesson107/presentation/AppBarTitle.dart';
import 'package:lesson107/presentation/AppBarActions.dart';
import 'package:lesson107/presentation/ScaffoldPart.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgound,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.backgound,
        title: const AppbarTitle(),
        actions: const [
          Appactions()
        ],
      ),
      body:  ScoffoldPage(),
      bottomNavigationBar: const NavigationBarPage(),
    );
  }
}

class NavigationBarPage extends StatelessWidget {
  const NavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xFFFD5D69),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/icons/home.svg"),
              SvgPicture.asset("assets/icons/comment.svg"),
              SvgPicture.asset("assets/icons/toplam.svg"),
              SvgPicture.asset("assets/icons/odam.svg"),
            ],
          ),
        ),
      ),
    );
  }
}

