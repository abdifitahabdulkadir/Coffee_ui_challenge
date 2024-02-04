import 'package:coffee_app/core/coffe_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  final String _imageMap = "asset/images/map.jpeg";
  final String _deliveryManImage = "asset/icons/delivery-man.png";
  final String _deliveryManFace = "asset/icons/deliveryman.jpg";
  Widget _delveryInfo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade300,
          )),
      child: ListTile(
        leading: Container(
          width: 60,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade300,
              )),
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              _deliveryManImage,
              width: 30,
              fit: BoxFit.cover,
              cacheWidth: 100,
              cacheHeight: 100,
            ),
          ),
        ),
        title: Text(
          "Delivered Your Order",
          style: GoogleFonts.podkova().copyWith(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'We deliver your goods to you in the shortest possible time',
          style: GoogleFonts.cabin().copyWith(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _getAgendInformation() {
    return ListTile(
      leading: Container(
        width: 100,
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            _deliveryManFace,
            cacheHeight: 70,
            width: 70,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        "Johan Hawan",
        style: GoogleFonts.poppins().copyWith(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        "Personal Courier",
        style: GoogleFonts.poppins().copyWith(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      trailing: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey.shade400,
            )),
        child: Icon(
          Icons.call,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                _imageMap,
                fit: BoxFit.cover,
                cacheHeight: 500,
              ),
              Align(
                child: IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 25),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 40,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
        Flexible(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                  blurRadius: 2,
                  color: Colors.grey,
                )
              ],
              color: CoffeColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 10,
                  width: 50,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.6),
                  ),
                ),
                Text(
                  "10 minutes left",
                  style: GoogleFonts.cabin().copyWith(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Delivery To ",
                      style: GoogleFonts.cabin().copyWith(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      " JPG.KPG Sutoyo",
                      style: GoogleFonts.cabin().copyWith(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Container(
                          height: 7,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 7,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 7,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 7,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                _delveryInfo(),
                SizedBox(height: 30),
                _getAgendInformation()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
