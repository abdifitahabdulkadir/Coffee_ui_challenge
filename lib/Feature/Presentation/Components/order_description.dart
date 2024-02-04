import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/coffe_colors.dart';
import '../../../core/coffee_dummy_data.dart';

final _buttonStyles = ElevatedButton.styleFrom(
    side: BorderSide(color: Colors.black45, width: 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(19),
    ));

final _buttonTextStyle = GoogleFonts.roboto().copyWith(
  fontSize: 20,
  color: Colors.black,
);

class OrderDescription extends StatelessWidget {
  final CoffeModel model;
  OrderDescription({super.key, required this.model});
  final String _deliverAddressLineOne = "Jl. Kpg Sutoyo";
  final String _deliverAddressLineTwo =
      "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.";

  Widget _getDeliverAddress({required BuildContext context}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      //  250,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery Address",
              style: GoogleFonts.poppins().copyWith(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              _deliverAddressLineOne,
              style: GoogleFonts.roboto().copyWith(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(height: 5),
            Text(
              _deliverAddressLineTwo,
              style: GoogleFonts.roboto().copyWith(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                TextButton.icon(
                  style: _buttonStyles,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    size: 15,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Edit Address",
                    style: _buttonTextStyle,
                  ),
                ),
                SizedBox(width: 10),
                TextButton.icon(
                  style: _buttonStyles,
                  onPressed: () {},
                  icon: Icon(
                    Icons.note,
                    size: 15,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Add Note",
                    style: _buttonTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getDeliverAddress(context: context);
  }
}

// order Image Descripton
class OrderImageDescription extends StatelessWidget {
  final CoffeModel model;
  const OrderImageDescription({super.key, required this.model});

  Widget _getImageOrderDescription() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(17),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              model.imageUrl,
              fit: BoxFit.cover,
              cacheHeight: 173,
              cacheWidth: 173,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  model.name,
                  style: _buttonTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  model.contains,
                  style: _buttonTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                  backgroundColor: CoffeColors.whiteColor,
                  heroTag: "buttonOne",
                  elevation: 2,
                  onPressed: () {},
                  child: Text(
                    "-",
                    style: _buttonTextStyle.copyWith(
                      fontSize: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 11),
              Text(
                "1",
                style: _buttonTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 11),
              SizedBox(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                  heroTag: "buttonTwo",
                  elevation: 2,
                  backgroundColor: CoffeColors.whiteColor,
                  onPressed: () {},
                  child: Text(
                    "+",
                    style: _buttonTextStyle.copyWith(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getImageOrderDescription();
  }
}
