import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/coffe_colors.dart';

class GetAppbarDesign extends StatelessWidget {
  final IconData leading;
  final String title;
  final IconData? trainling;
  const GetAppbarDesign(
      {super.key,
      required this.leading,
      required this.title,
      required this.trainling});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: Navigator.of(context).pop,
            icon: Icon(
              leading,
              size: 30,
              color: CoffeColors.appBarColor,
            ),
          ),
          Text(
            title,
            style: GoogleFonts.roboto().copyWith(
              fontSize: 30,
              color: CoffeColors.appBarColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              trainling,
              size: 30,
              color: CoffeColors.appBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
