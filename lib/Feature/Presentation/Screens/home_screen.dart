import 'package:coffee_app/Feature/Presentation/Components/show_case.dart';
import 'package:coffee_app/core/coffe_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Components/bottom_nav_bar.dart';
import '../Components/coffe_categories.dart';
import '../Components/coffee_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  PreferredSizeWidget? _getAppBar() {
    return AppBar(
      backgroundColor: CoffeColors.showcaseBgColorOne,
      toolbarHeight: 100,
      title: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, bottom: 26),
        child: ListTile(
          title: Text(
            "Location,",
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: CoffeColors.whiteColor.withOpacity(0.6),
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                "Bilzen,",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 20,
                  color: CoffeColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Tanjubani",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 20,
                  color: CoffeColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20,
                color: CoffeColors.whiteColor,
              )
            ],
          ),
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "asset/images/profilepic.jpg",
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              cacheWidth: 50,
              cacheHeight: 50,
            ),
          ),
        ),
      ),
    );
  }

  // get Texfield design

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoffeColors.whiteColor,
      appBar: _getAppBar(),
      body: RepaintBoundary(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Showcase()),
            SliverToBoxAdapter(child: CoffeeCategories()),
            CoffeeGridView(),
          ],
        ),
      ),
      bottomNavigationBar: CoffeBottomNavBar(),
    );
  }
}
