import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPaymentInformation extends StatelessWidget {
  OrderPaymentInformation({super.key});
  final _customFontStyle = GoogleFonts.poppins().copyWith(
    fontSize: 20,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            "Payment Summary",
            style: _customFontStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
        ListTile(
            contentPadding: const EdgeInsets.only(left: 16, right: 10),
            title: Text(
              "Price",
              style: _customFontStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            ),
            trailing: Text(
              "\$ 4.53",
              style: _customFontStyle.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            )),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 16, right: 10),
          title: Text(
            "Delivery Fee",
            style: _customFontStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          ),
          trailing: SizedBox(
            width: 99,
            child: Row(
              children: [
                Text(
                  "\$ 2.0",
                  style: _customFontStyle.copyWith(
                    fontSize: 20,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),
                ),
                Text(
                  "\$ 1.0",
                  style: _customFontStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 7),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Divider(height: 10, thickness: 2, color: Colors.grey.shade300),
        ),
        ListTile(
            contentPadding: const EdgeInsets.only(left: 16, right: 10),
            title: Text(
              "Payment Total",
              style: _customFontStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            ),
            trailing: Text(
              "\$ 5.53",
              style: _customFontStyle.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            )),
      ],
    );
  }
}
