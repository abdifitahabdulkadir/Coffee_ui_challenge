import '/Feature/Presentation/Screens/delivery_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/coffe_colors.dart';

class OrderBottomNavBar extends StatelessWidget {
  const OrderBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: CoffeColors.whiteColor.withOpacity(0.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.monetization_on,
              color: CoffeColors.secondaryColorOne,
              size: 40,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  width: 100,
                  decoration: BoxDecoration(
                      color: CoffeColors.secondaryColorOne,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                      )),
                  child: Text(
                    "Cash",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 20,
                      color: CoffeColors.whiteColor,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                      )),
                  child: Text(
                    "\$ 5.45",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade700,
              child: Icon(
                Icons.more_horiz_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return DeliveryScreen();
              }));
            },
            child: Container(
              height: 80,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  color: CoffeColors.secondaryColorOne,
                  borderRadius: BorderRadius.circular(17)),
              child: Text(
                "Order",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 40,
                  color: CoffeColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
