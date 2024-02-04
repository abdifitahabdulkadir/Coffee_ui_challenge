import 'package:coffee_app/core/coffe_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Showcase extends StatelessWidget {
  const Showcase({super.key});

  // get Texfield design
  Widget _getTextfield() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: CoffeColors.textFieldBg),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon:
                Icon(Icons.search, color: CoffeColors.whiteColor, size: 30),
            suffixIcon: Container(
              margin: EdgeInsets.only(right: 5, top: 2, bottom: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CoffeColors.secondaryColorOne.withOpacity(0.7),
              ),
              child:
                  Icon(Icons.category, color: CoffeColors.whiteColor, size: 30),
            ),
            hintStyle: GoogleFonts.firaCode().copyWith(
              fontSize: 15,
              color: Colors.grey.shade300,
            ),
            hintText: "Search Coffe"),
      ),
    );
  }

  // get cofffe image design
  Widget _getCoffeImageDesign() {
    return Container(
      height: 200,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(left: 20, bottom: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("asset/images/coffeimage.jpg"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CoffeColors.secondaryColorOne,
              ),
              child: Text(
                "Promo",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 35,
                  color: CoffeColors.whiteColor,
                ),
              ),
            ),
            Text(
              " Buy One get ",
              style: GoogleFonts.roboto().copyWith(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: CoffeColors.whiteColor,
                height: 1.3,
                wordSpacing: 5,
                backgroundColor: CoffeColors.appBarColor,
              ),
            ),
            Text(
              " One FREE ",
              style: GoogleFonts.roboto().copyWith(
                fontSize: 35,
                height: 1.3,
                wordSpacing: 5,
                color: CoffeColors.whiteColor,
                fontWeight: FontWeight.bold,
                backgroundColor: CoffeColors.appBarColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.37,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topLeft,
                    colors: [
                  CoffeColors.showcaseBgColorTwo,
                  CoffeColors.showcaseBgColorOne,
                ])),
            child: Column(
              children: [
                _getTextfield(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _getCoffeImageDesign(),
          )
        ],
      ),
    );
  }
}
