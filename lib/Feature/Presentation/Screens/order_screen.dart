import '/Feature/Presentation/Components/get_app_bar_design.dart';
import 'package:coffee_app/core/coffe_colors.dart';
import 'package:coffee_app/core/coffee_dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Components/order_bottom_bar.dart';
import '../Components/order_description.dart';
import '../Components/order_payment.dart';

class OrderScreen extends StatelessWidget {
  final CoffeModel model;

  OrderScreen({super.key, required this.model});

  Widget _getDiscountInformation() {
    return Container(
      height: 80,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: ListTile(
        leading: Icon(
          Icons.design_services_outlined,
          color: CoffeColors.secondaryColorOne,
          size: 40,
        ),
        title: Text(
          "1 Discount is applied",
          style: GoogleFonts.jetBrainsMono().copyWith(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Icon(
          Icons.navigate_next_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: RepaintBoundary(
          child: Column(
            children: [
              GetAppbarDesign(
                leading: Icons.arrow_back_ios,
                title: "Order",
                trainling: null,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width / 2) - 20,
                      decoration: BoxDecoration(
                        color: CoffeColors.secondaryColorOne,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Text(
                        "Deliver",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 30,
                          color: CoffeColors.whiteColor,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width / 2) - 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        "Pick Up",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 30,
                          color: CoffeColors.whiteColor,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              OrderDescription(model: model),
              SizedBox(height: 7),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                      height: 10, thickness: 2, color: Colors.grey.shade300)),
              SizedBox(height: 7),
              OrderImageDescription(model: model),
              SizedBox(height: 10),
              Divider(height: 10, thickness: 4, color: Colors.grey.shade300),
              SizedBox(height: 7),
              _getDiscountInformation(),
              OrderPaymentInformation(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: OrderBottomNavBar(),
    );
  }
}
