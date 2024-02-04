import 'package:coffee_app/core/coffe_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/coffee_dummy_data.dart';

class CoffeeCategories extends StatelessWidget {
  const CoffeeCategories({super.key});
// height:
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.096,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: coffeNames.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: 150,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 4, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                offset: Offset(0, 2),
                blurRadius: 5,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.grey.shade50.withOpacity(0.8),
                offset: Offset(0, -2),
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
            color: index != 0
                ? CoffeColors.whiteColor
                : CoffeColors.secondaryColorOne.withOpacity(0.9),
          ),
          child: Text(
            coffeNames[index],
            style: GoogleFonts.poppins().copyWith(
                fontSize: 20,
                color: index != 0 ? Colors.black : CoffeColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
